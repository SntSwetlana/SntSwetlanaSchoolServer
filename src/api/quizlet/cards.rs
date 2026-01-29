use axum::{
    extract::{Path, Query, State},
    http::StatusCode,
    Json,
};
use chrono::{DateTime, Utc};
use diesel::prelude::*;
use serde::{Deserialize, Serialize};
use uuid::Uuid;

use base64::engine::general_purpose::STANDARD;
use base64::Engine;


use crate::AppState;

use crate::schema::quizlet_cards::dsl as qc;

#[derive(Debug, Serialize, Queryable)]
pub struct QuizletCard {
    pub id: Uuid,
    pub set_id: Uuid,
    pub position: i32,
    pub term: String,
    pub explanation: String,
    pub image_url: Option<String>,
    pub image_alt: Option<String>,
    pub image_data: Option<Vec<u8>>,
    pub image_mime: Option<String>,
    pub created_at: DateTime<Utc>,
}

// DTO для списка (чтобы не таскать image_data)
#[derive(Debug, Serialize, Queryable)]
pub struct QuizletCardListItem {
    pub id: Uuid,
    pub set_id: Uuid,
    pub position: i32,
    pub term: String,
    pub explanation: String,
    pub image_url: Option<String>,
    pub image_alt: Option<String>,
    pub image_mime: Option<String>,
    pub created_at: DateTime<Utc>,
}

#[derive(Debug, Deserialize)]
pub struct ListCardsQuery {
    pub q: Option<String>,        // поиск по term/explanation
    pub limit: Option<i64>,
    pub offset: Option<i64>,
    pub order: Option<String>,    // asc|desc (по position)
}

#[derive(Debug, Deserialize)]
pub struct CreateCardBody {
    pub position: Option<i32>, // если None -> добавим в конец
    pub term: String,
    pub explanation: String,

    // Один из вариантов:
    pub image_url: Option<String>,
    pub image_alt: Option<String>,

    // либо base64 (если решишь хранить бинарь)
    pub image_base64: Option<String>,
    pub image_mime: Option<String>,
}

#[derive(Debug, Deserialize)]
pub struct UpdateCardBody {
    pub position: Option<i32>,
    pub term: Option<String>,
    pub explanation: Option<String>,

    pub image_url: Option<Option<String>>,      // Some(None) = стереть
    pub image_alt: Option<Option<String>>,

    pub image_base64: Option<Option<String>>,   // Some(None) = стереть
    pub image_mime: Option<Option<String>>,
}

fn decode_base64_opt(v: &Option<String>) -> Result<Option<Vec<u8>>, StatusCode> {
    if let Some(s) = v {
        let bytes = STANDARD.decode(s).map_err(|_| StatusCode::BAD_REQUEST)?;
        Ok(Some(bytes))
    } else {
        Ok(None)
    }
}

pub async fn list_cards(
    State(state): State<AppState>,
    Path(set_id): Path<Uuid>,
    Query(p): Query<ListCardsQuery>,
) -> Result<Json<Vec<QuizletCardListItem>>, StatusCode> {
    let mut conn = state.pool.get().map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    // ВАЖНО: tokens объявляем ДО query
    let tokens: Vec<String> = p
        .q
        .as_deref()
        .map(|q| {
            q.split_whitespace()
                .filter(|t| !t.is_empty())
                .map(|t| format!("%{}%", t))
                .collect()
        })
        .unwrap_or_default();

    let mut query = qc::quizlet_cards
        .filter(qc::set_id.eq(set_id))
        .into_boxed();

    for token in tokens.iter() {
        query = query.filter(
            qc::term.ilike(token).or(qc::explanation.ilike(token)),
        );
    }

    let desc = matches!(p.order.as_deref(), Some("desc" | "DESC"));
    query = if desc {
        query.order(qc::position.desc())
    } else {
        query.order(qc::position.asc())
    };

    let limit = p.limit.unwrap_or(200).clamp(1, 500);
    let offset = p.offset.unwrap_or(0).max(0);

    let items = query
        .select((
            qc::id,
            qc::set_id,
            qc::position,
            qc::term,
            qc::explanation,
            qc::image_url,
            qc::image_alt,
            qc::image_mime,
            qc::created_at,
        ))
        .limit(limit)
        .offset(offset)
        .load::<QuizletCardListItem>(&mut conn)
        .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    Ok(Json(items))
}

pub async fn get_card(
    State(state): State<AppState>,
    Path((set_id, card_id)): Path<(Uuid, Uuid)>,
) -> Result<Json<QuizletCard>, StatusCode> {
    let mut conn = state.pool.get().map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    let card = qc::quizlet_cards
        .filter(qc::set_id.eq(set_id))
        .filter(qc::id.eq(card_id))
        .first::<QuizletCard>(&mut conn)
        .map_err(|_| StatusCode::NOT_FOUND)?;

    Ok(Json(card))
}

pub async fn create_card(
    State(state): State<AppState>,
    Path(set_id): Path<Uuid>,
    Json(body): Json<CreateCardBody>,
) -> Result<(StatusCode, Json<QuizletCard>), StatusCode> {
    let mut conn = state.pool.get().map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    // image: либо url, либо base64+bmime, либо пусто
    if body.image_base64.is_some() && body.image_url.is_some() {
        return Err(StatusCode::BAD_REQUEST);
    }
    if body.image_base64.is_some() && body.image_mime.is_none() {
        return Err(StatusCode::BAD_REQUEST);
    }

    let image_data = decode_base64_opt(&body.image_base64)?;
    let image_mime = body.image_mime.clone();

    // position: если не задана — ставим в конец (max+1)
    let pos = if let Some(p) = body.position {
        p
    } else {
        let max_pos: Option<i32> = qc::quizlet_cards
            .filter(qc::set_id.eq(set_id))
            .select(diesel::dsl::max(qc::position))
            .first::<Option<i32>>(&mut conn)
            .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;
        max_pos.unwrap_or(0) + 1
    };

    // Вставка и возврат строки
    let inserted: QuizletCard = diesel::insert_into(qc::quizlet_cards)
        .values((
            qc::set_id.eq(set_id),
            qc::position.eq(pos),
            qc::term.eq(body.term),
            qc::explanation.eq(body.explanation),
            qc::image_url.eq(body.image_url),
            qc::image_alt.eq(body.image_alt),
            qc::image_data.eq(image_data),
            qc::image_mime.eq(image_mime),
        ))
        .get_result(&mut conn)
        .map_err(|e| {
            // уникальный (set_id, position) может упасть
            eprintln!("create_card error: {e}");
            StatusCode::CONFLICT
        })?;

    Ok((StatusCode::CREATED, Json(inserted)))
}

pub async fn update_card(
    State(state): State<AppState>,
    Path((set_id, card_id)): Path<(Uuid, Uuid)>,
    Json(body): Json<UpdateCardBody>,
) -> Result<Json<QuizletCard>, StatusCode> {
    let mut conn = state.pool.get().map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    // запретим одновременно менять url и base64
    if body.image_url.is_some() && body.image_base64.is_some() {
        return Err(StatusCode::BAD_REQUEST);
    }
    // если ставим base64 -> mime обязателен
    if let Some(Some(_)) = body.image_base64 {
        if !matches!(body.image_mime, Some(Some(_))) {
            return Err(StatusCode::BAD_REQUEST);
        }
    }

    // проверка существования
    qc::quizlet_cards
        .filter(qc::set_id.eq(set_id))
        .filter(qc::id.eq(card_id))
        .select(qc::id)
        .first::<Uuid>(&mut conn)
        .map_err(|_| StatusCode::NOT_FOUND)?;

    // транзакция
    conn.transaction(|conn| {
        // 1) простые поля (position/term/explanation)
        diesel::sql_query(
            r#"
            UPDATE quizlet_cards
            SET
              position    = COALESCE($1, position),
              term        = COALESCE($2, term),
              explanation = COALESCE($3, explanation)
            WHERE set_id = $4 AND id = $5
            "#
        )
        .bind::<diesel::sql_types::Nullable<diesel::sql_types::Int4>, _>(body.position)
        .bind::<diesel::sql_types::Nullable<diesel::sql_types::Text>, _>(body.term.as_deref())
        .bind::<diesel::sql_types::Nullable<diesel::sql_types::Text>, _>(body.explanation.as_deref())
        .bind::<diesel::sql_types::Uuid, _>(set_id)
        .bind::<diesel::sql_types::Uuid, _>(card_id)
        .execute(conn)?;

        // 2) image_alt: отличаем "не трогать" от "стереть"
        if let Some(alt_opt) = &body.image_alt {
            match alt_opt {
                None => {
                    diesel::sql_query(
                        r#"UPDATE quizlet_cards SET image_alt = NULL WHERE set_id = $1 AND id = $2"#
                    )
                    .bind::<diesel::sql_types::Uuid, _>(set_id)
                    .bind::<diesel::sql_types::Uuid, _>(card_id)
                    .execute(conn)?;
                }
                Some(v) => {
                    diesel::sql_query(
                        r#"UPDATE quizlet_cards SET image_alt = $1 WHERE set_id = $2 AND id = $3"#
                    )
                    .bind::<diesel::sql_types::Text, _>(v.as_str())
                    .bind::<diesel::sql_types::Uuid, _>(set_id)
                    .bind::<diesel::sql_types::Uuid, _>(card_id)
                    .execute(conn)?;
                }
            }
        }

        // 3) image_url: если меняем url, чистим бинарник
        if let Some(url_opt) = &body.image_url {
            match url_opt {
                None => {
                    diesel::sql_query(
                        r#"UPDATE quizlet_cards SET image_url = NULL WHERE set_id = $1 AND id = $2"#
                    )
                    .bind::<diesel::sql_types::Uuid, _>(set_id)
                    .bind::<diesel::sql_types::Uuid, _>(card_id)
                    .execute(conn)?;
                }
                Some(url) => {
                    diesel::sql_query(
                        r#"
                        UPDATE quizlet_cards
                        SET image_url = $1, image_data = NULL, image_mime = NULL
                        WHERE set_id = $2 AND id = $3
                        "#
                    )
                    .bind::<diesel::sql_types::Text, _>(url.as_str())
                    .bind::<diesel::sql_types::Uuid, _>(set_id)
                    .bind::<diesel::sql_types::Uuid, _>(card_id)
                    .execute(conn)?;
                }
            }
        }

        // 4) image_base64: если меняем бинарник, чистим url
        if let Some(b64_opt) = &body.image_base64 {
            match b64_opt {
                None => {
                    diesel::sql_query(
                        r#"
                        UPDATE quizlet_cards
                        SET image_data = NULL, image_mime = NULL
                        WHERE set_id = $1 AND id = $2
                        "#
                    )
                    .bind::<diesel::sql_types::Uuid, _>(set_id)
                    .bind::<diesel::sql_types::Uuid, _>(card_id)
                    .execute(conn)?;
                }
                Some(b64) => {
                    let bytes = STANDARD.decode(b64).map_err(|_| diesel::result::Error::RollbackTransaction)?;

                    let mime = match &body.image_mime {
                        Some(Some(m)) => m.as_str(),
                        _ => return Err(diesel::result::Error::RollbackTransaction),
                    };

                    diesel::sql_query(
                        r#"
                        UPDATE quizlet_cards
                        SET image_data = $1, image_mime = $2, image_url = NULL
                        WHERE set_id = $3 AND id = $4
                        "#
                    )
                    .bind::<diesel::sql_types::Binary, _>(bytes)
                    .bind::<diesel::sql_types::Text, _>(mime)
                    .bind::<diesel::sql_types::Uuid, _>(set_id)
                    .bind::<diesel::sql_types::Uuid, _>(card_id)
                    .execute(conn)?;
                }
            }
        }

        Ok::<_, diesel::result::Error>(())
    })
    .map_err(|e| {
        eprintln!("update_card tx error: {e}");
        StatusCode::CONFLICT
    })?;

    // вернуть обновлённую карточку
    let updated = qc::quizlet_cards
        .filter(qc::set_id.eq(set_id))
        .filter(qc::id.eq(card_id))
        .first::<QuizletCard>(&mut conn)
        .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    Ok(Json(updated))
}

pub async fn delete_card(
    State(state): State<AppState>,
    Path((set_id, card_id)): Path<(Uuid, Uuid)>,
) -> Result<StatusCode, StatusCode> {
    let mut conn = state.pool.get().map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    let deleted = diesel::delete(
        qc::quizlet_cards
            .filter(qc::set_id.eq(set_id))
            .filter(qc::id.eq(card_id)),
    )
    .execute(&mut conn)
    .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    if deleted == 0 {
        return Err(StatusCode::NOT_FOUND);
    }

    Ok(StatusCode::NO_CONTENT)
}
