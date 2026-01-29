use axum::{extract::{Path, State}, http::StatusCode, Json};
use diesel::prelude::*;
use serde::Deserialize;
use uuid::Uuid;

use crate::AppState;

#[derive(Debug, Deserialize)]
pub struct ReplaceCardsBody {
    pub cards: Vec<ReplaceCardItem>,
}

#[derive(Debug, Deserialize)]
pub struct ReplaceCardItem {
    pub term: String,
    pub explanation: String,
    pub image_base64: Option<String>,
    pub image_mime: Option<String>,
}

pub async fn replace_cards(
    State(state): State<AppState>,
    Path(set_id): Path<Uuid>,
    Json(body): Json<ReplaceCardsBody>,
) -> Result<StatusCode, StatusCode> {
    let mut conn = state.pool.get().map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    conn.transaction(|conn| {
        diesel::sql_query("DELETE FROM quizlet_cards WHERE set_id = $1")
            .bind::<diesel::sql_types::Uuid, _>(set_id)
            .execute(conn)?;

        for (i, c) in body.cards.iter().enumerate() {
            diesel::sql_query(
                r#"
                INSERT INTO quizlet_cards (set_id, position, term, explanation, image_data, image_mime)
                VALUES ($1,$2,$3,$4,$5,$6)
                "#
            )
            .bind::<diesel::sql_types::Uuid, _>(set_id)
            .bind::<diesel::sql_types::Int4, _>((i as i32) + 1)
            .bind::<diesel::sql_types::Text, _>(c.term.as_str())
            .bind::<diesel::sql_types::Text, _>(c.explanation.as_str())
            // image_data пока не трогаем (если хочешь — добавим decode base64)
            .bind::<diesel::sql_types::Nullable<diesel::sql_types::Binary>, _>(None::<Vec<u8>>)
            .bind::<diesel::sql_types::Nullable<diesel::sql_types::Text>, _>(None::<String>)
            .execute(conn)?;
        }

        Ok::<_, diesel::result::Error>(())
    })
    .map_err(|_| StatusCode::CONFLICT)?;

    Ok(StatusCode::NO_CONTENT)
}
