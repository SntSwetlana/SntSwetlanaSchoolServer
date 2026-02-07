use axum::{extract::{Path, State}, http::StatusCode, Json};
use chrono::{DateTime, Utc};
use diesel::prelude::*;
use crate::schema::quizlet_sets;
use serde::Serialize;
use uuid::Uuid;
use diesel::sql_types::BigInt;

use crate::AppState;
use crate::schema::{quizlet_sets::dsl as qs, quizlet_cards::dsl as qc};

#[derive(Debug, Serialize, Queryable, Selectable)]
#[diesel(table_name = quizlet_sets)]
#[diesel(check_for_backend(diesel::pg::Pg))]
pub struct QuizletSetRow {
    pub id: Uuid,
    pub slug: String,
    pub title: String,
    pub description: Option<String>,
    pub language_level: Option<String>,
    pub textbook_id: Option<Uuid>,
    pub owner_id: Option<Uuid>,
    pub created_at: DateTime<Utc>,
    pub updated_at: DateTime<Utc>,
    pub source_url: Option<String>,
}

#[derive(Debug, Serialize, Queryable)]
pub struct QuizletCardRow {
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

#[derive(Debug, Serialize)]
pub struct FullResponse {
    pub set: QuizletSetRow,
    pub cards: Vec<QuizletCardRow>,
}

pub async fn get_set_full(
    State(state): State<AppState>,
    Path(set_id): Path<Uuid>,
) -> Result<Json<FullResponse>, StatusCode> {
    let mut conn = state.pool.get().map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    let set = qs::quizlet_sets
        .filter(qs::id.eq(set_id))
        .select(QuizletSetRow::as_select())
        .first::<QuizletSetRow>(&mut conn)
        .map_err(|_| StatusCode::NOT_FOUND)?;

    let cards = qc::quizlet_cards
        .filter(qc::set_id.eq(set_id))
        .order(qc::position.asc())
        .load::<QuizletCardRow>(&mut conn)
        .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    Ok(Json(FullResponse { set, cards }))
}

#[derive(Debug, Serialize)]
pub struct QuizletSetListItem {
    pub id: Uuid,
    pub slug: String,
    pub title: String,
    pub description: Option<String>,
    pub updated_at: DateTime<Utc>,
    pub cards_count: i64,
    pub is_draft: bool,
}

#[derive(Debug, Serialize)]
pub struct QuizletSetsGroupedResponse {
    pub in_progress: Vec<QuizletSetListItem>,
    pub this_week: Vec<QuizletSetListItem>,
    pub recent: Vec<QuizletSetListItem>,
}
fn is_draft_title(title: &str) -> bool {
    title.trim_start().starts_with("(Draft)")
}
pub async fn list_sets_grouped(
    State(state): State<AppState>,
) -> Result<Json<QuizletSetsGroupedResponse>, StatusCode> {
    use crate::schema::quizlet_cards::dsl as qc;
    use crate::schema::quizlet_sets::dsl as qs;

    let mut conn = state
        .pool
        .get()
        .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    // Diesel не имеет удобного "now() - interval '7 days'" как выражения,
    // поэтому используем raw SQL кусок как timestamp with time zone.
    let week_ago = diesel::dsl::sql::<diesel::sql_types::Timestamptz>("now() - interval '7 days'");

    // Вытаскиваем мету сета + количество карточек
    // LEFT JOIN чтобы сеты без карточек тоже были
    let rows: Vec<(Uuid, String, String, Option<String>, DateTime<Utc>, i64)> = qs::quizlet_sets
        .left_join(qc::quizlet_cards.on(qc::set_id.eq(qs::id)))
        .select((
            qs::id,
            qs::slug,
            qs::title,
            qs::description,
            qs::updated_at,
            diesel::dsl::sql::<BigInt>(
                "(select count(*) from quizlet_cards c where c.set_id = quizlet_sets.id)"
            ),
        ))
        .group_by((qs::id, qs::slug, qs::title, qs::description, qs::updated_at))
        .order(qs::updated_at.desc())
        .load::<(Uuid, String, String, Option<String>, DateTime<Utc>, i64)>(&mut conn)
        .map_err(|e| {
            eprintln!("list_sets_grouped query error: {e}");
            StatusCode::INTERNAL_SERVER_ERROR
        })?;

    // Разбиваем на группы
    let mut in_progress = Vec::new();
    let mut this_week = Vec::new();
    let mut recent = Vec::new();

    for (id, slug, title, description, updated_at, cards_count) in rows {
        let draft = is_draft_title(&title);

        let item = QuizletSetListItem {
            id,
            slug,
            title,
            description,
            updated_at,
            cards_count,
            is_draft: draft,
        };

        if draft {
            in_progress.push(item);
            continue;
        }

        // this_week/recent — можно определить либо в SQL, либо в Rust.
        // Здесь сделаем в SQL-подобной логике: сравнение через week_ago на стороне базы удобнее,
        // но Diesel сравнение с week_ago сделаем отдельным быстрым селектом — не нужно.
        // Поэтому проще: сравним в Rust.
        //
        // Но чтобы не тянуть "week_ago" из SQL, используем chrono:
        // This week = последние 7 дней.
        let seven_days_ago = Utc::now() - chrono::Duration::days(7);

        if updated_at >= seven_days_ago {
            this_week.push(item);
        } else {
            recent.push(item);
        }
    }

    // (опционально) Можно сортировать внутри групп по updated_at DESC (уже так, но after split тоже ок)
    in_progress.sort_by(|a, b| b.updated_at.cmp(&a.updated_at));
    this_week.sort_by(|a, b| b.updated_at.cmp(&a.updated_at));
    recent.sort_by(|a, b| b.updated_at.cmp(&a.updated_at));

    Ok(Json(QuizletSetsGroupedResponse {
        in_progress,
        this_week,
        recent,
    }))
}