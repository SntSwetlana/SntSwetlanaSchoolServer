use axum::{extract::{Path, State}, http::StatusCode, Json};
use chrono::{DateTime, Utc};
use diesel::prelude::*;
use serde::{Deserialize, Serialize};
use uuid::Uuid;

use crate::{AppState};
use crate::schema::quizlet_sets::dsl as qs;
use crate::schema::quizlet_sets;

#[derive(Debug, Serialize, Queryable,Selectable)]
#[diesel(table_name = quizlet_sets)]
#[diesel(check_for_backend(diesel::pg::Pg))]
pub struct QuizletSet {
    pub id: Uuid,
    pub slug: String,
    pub title: String,
    pub description: Option<String>,
    pub language_level: Option<String>,
    pub textbook_id: Option<Uuid>,
    pub folder_id: Option<Uuid>,
    pub owner_id: Option<Uuid>,
    pub created_at: DateTime<Utc>,
    pub updated_at: DateTime<Utc>,
    pub source_url: Option<String>,
}

#[derive(Debug, Deserialize)]
pub struct UpsertSetBody {
    pub slug: String,
    pub title: String,
    pub description: Option<String>,
    pub language_level: Option<String>,
    pub textbook_id: Option<Uuid>,
    pub folder_id: Option<Uuid>,
    pub source_url: Option<String>,
}

pub async fn upsert_set(
    State(state): State<AppState>,
    Path(set_id): Path<Uuid>,
    Json(body): Json<UpsertSetBody>,
) -> Result<Json<QuizletSet>, StatusCode> {
    let mut conn = state.pool.get().map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    // diesel upsert через sql_query (быстрее и проще)
    diesel::sql_query(
        r#"
        INSERT INTO quizlet_sets (id, slug, title, description, language_level, textbook_id, folder_id, source_url, created_at, updated_at)
        VALUES ($1,$2,$3,$4,$5,$6,$7,$8, now(), now())
        ON CONFLICT (slug) DO UPDATE SET
        id = EXCLUDED.id,
        title = EXCLUDED.title,
        description = EXCLUDED.description,
        language_level = EXCLUDED.language_level,
        textbook_id = EXCLUDED.textbook_id,
        folder_id = EXCLUDED.folder_id,
        source_url = EXCLUDED.source_url,
        updated_at = now()
        RETURNING *
        "#
    )
    .bind::<diesel::sql_types::Uuid, _>(set_id)
    .bind::<diesel::sql_types::Text, _>(body.slug)
    .bind::<diesel::sql_types::Text, _>(body.title)
    .bind::<diesel::sql_types::Nullable<diesel::sql_types::Text>, _>(body.description)
    .bind::<diesel::sql_types::Nullable<diesel::sql_types::Text>, _>(body.language_level)
    .bind::<diesel::sql_types::Nullable<diesel::sql_types::Uuid>, _>(body.textbook_id)
    .bind::<diesel::sql_types::Nullable<diesel::sql_types::Uuid>, _>(body.folder_id)
    .bind::<diesel::sql_types::Nullable<diesel::sql_types::Text>, _>(body.source_url)
    .execute(&mut conn)
    .map_err(|_| StatusCode::CONFLICT)?;

    let set = qs::quizlet_sets
        .filter(qs::id.eq(set_id))
        .select(QuizletSet::as_select())
        .first::<QuizletSet>(&mut conn)
        .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    Ok(Json(set))
}
