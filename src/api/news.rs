use axum::{
    extract::{Query, State},
    http::StatusCode,
    Json,
};
use diesel::prelude::*;
use serde::Deserialize;
use utoipa::{IntoParams, ToSchema};

use crate::{
    AppState,
    models::news::{NewsListResponse, NewsPost},
    schema::news_posts::dsl as news,
};

#[derive(Debug, Deserialize, IntoParams, ToSchema)]
pub struct NewsQuery {
    /// Max number of items to return (1..50)
    pub limit: Option<i64>,
    /// Filter by kind: idiom, news, tip, collocation, vocab, grammar, phrase, anecdote
    pub kind: Option<String>,
}

#[derive(Debug, serde::Serialize, ToSchema)]
pub struct ApiErrorResponse {
    pub error: String,
}

fn clamp_limit(v: Option<i64>) -> i64 {
    v.unwrap_or(20).clamp(1, 50)
}

#[utoipa::path(
    get,
    path = "/api/news",
    tag = "News",
    params(NewsQuery),
    responses(
        (
            status = 200,
            description = "List of news items",
            body = NewsListResponse
        ),
        (
            status = 400,
            description = "Invalid query parameters",
            body = ApiErrorResponse
        ),
        (
            status = 500,
            description = "Internal server error",
            body = ApiErrorResponse
        )
    )
)]
pub async fn list_news(
    State(state): State<AppState>,
    Query(q): Query<NewsQuery>,
) -> Result<Json<NewsListResponse>, (StatusCode, String)> {
    let limit = clamp_limit(q.limit);
    let kind_opt = q.kind.clone();

    if let Some(ref k) = kind_opt {
        let ok =
            k == "idiom" ||
            k == "news" ||
            k == "tip" ||
            k == "collocation" ||
            k == "vocab" ||
            k == "grammar" ||
            k == "phrase" ||
            k == "anecdote";

        if !ok {
            return Err((StatusCode::BAD_REQUEST, "Invalid kind".to_string()));
        }
    }

    let pool = state.pool.clone();

    let items = tokio::task::spawn_blocking(move || {
        let mut conn = pool.get().map_err(|e| format!("db pool error: {e}"))?;

        let mut query = news::news_posts
            .order((news::created_at.desc(), news::id.desc()))
            .limit(limit)
            .into_boxed();

        if let Some(k) = kind_opt.as_deref() {
            query = query.filter(news::kind.eq(k));
        }

        query
            .load::<NewsPost>(&mut conn)
            .map_err(|e| format!("db query error: {e}"))
    })
    .await
    .map_err(|e| (StatusCode::INTERNAL_SERVER_ERROR, format!("join error: {e}")))?
    .map_err(|msg| (StatusCode::INTERNAL_SERVER_ERROR, msg))?;

    Ok(Json(NewsListResponse { items }))
}