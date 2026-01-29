use axum::{
    extract::{Path, State},
    http::StatusCode,
    Json,
};
use chrono::{DateTime, Utc};
use diesel::prelude::*;
use serde::{Deserialize, Serialize};
use uuid::Uuid;

use crate::AppState;
use crate::schema::{quizlet_folders, quizlet_sets};

#[derive(Debug, Serialize, Queryable)]
pub struct FolderRow {
    pub id: Uuid,
    pub title: String,
    pub owner_id: Option<Uuid>,
    pub created_at: DateTime<Utc>,
    pub updated_at: DateTime<Utc>,
}

#[derive(Debug, Serialize)]
pub struct FolderListItem {
    pub id: Uuid,
    pub title: String,
    pub sets_count: i64,
    pub updated_at: DateTime<Utc>,
}

#[derive(Debug, Deserialize)]
pub struct CreateFolderBody {
    pub title: String,
    pub owner_id: Option<Uuid>,
}

#[derive(Debug, Deserialize)]
pub struct UpdateFolderBody {
    pub title: String, // переименование
}

#[derive(Debug, Deserialize)]
pub struct ReplaceFolderSetsBody {
    pub set_ids: Vec<Uuid>,
}
pub async fn list_folders(
    State(state): State<AppState>,
) -> Result<Json<Vec<FolderListItem>>, StatusCode> {
    let mut conn = state.pool.get().map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    // LEFT JOIN + COUNT(sets)
    // В diesel для count лучше select + group_by
    let rows: Vec<(Uuid, String, DateTime<Utc>, i64)> = quizlet_folders::table
        .left_join(quizlet_sets::table.on(quizlet_sets::folder_id.eq(quizlet_folders::id.nullable())))
        .select((
            quizlet_folders::id,
            quizlet_folders::title,
            quizlet_folders::updated_at,
            diesel::dsl::count(quizlet_sets::id),
        ))
        .group_by((quizlet_folders::id, quizlet_folders::title, quizlet_folders::updated_at))
        .order(quizlet_folders::updated_at.desc())
        .load(&mut conn)
        .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    let out = rows
        .into_iter()
        .map(|(id, title, updated_at, sets_count)| FolderListItem {
            id,
            title,
            sets_count,
            updated_at,
        })
        .collect();

    Ok(Json(out))
}

pub async fn create_folder(
    State(state): State<AppState>,
    Json(body): Json<CreateFolderBody>,
) -> Result<(StatusCode, Json<FolderRow>), StatusCode> {
    if body.title.trim().is_empty() {
        return Err(StatusCode::BAD_REQUEST);
    }

    let mut conn = state.pool.get().map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    #[derive(Insertable)]
    #[diesel(table_name = quizlet_folders)]
    struct NewFolder {
        title: String,
        owner_id: Option<Uuid>,
    }

    let inserted: FolderRow = diesel::insert_into(quizlet_folders::table)
        .values(NewFolder {
            title: body.title.trim().to_string(),
            owner_id: body.owner_id,
        })
        .get_result(&mut conn)
        .map_err(|_| StatusCode::CONFLICT)?;

    Ok((StatusCode::CREATED, Json(inserted)))
}

pub async fn get_folder(
    State(state): State<AppState>,
    Path(folder_id): Path<Uuid>,
) -> Result<Json<FolderRow>, StatusCode> {
    let mut conn = state.pool.get().map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    let folder = quizlet_folders::table
        .filter(quizlet_folders::id.eq(folder_id))
        .first::<FolderRow>(&mut conn)
        .map_err(|_| StatusCode::NOT_FOUND)?;

    Ok(Json(folder))
}

pub async fn rename_folder(
    State(state): State<AppState>,
    Path(folder_id): Path<Uuid>,
    Json(body): Json<UpdateFolderBody>,
) -> Result<Json<FolderRow>, StatusCode> {
    if body.title.trim().is_empty() {
        return Err(StatusCode::BAD_REQUEST);
    }

    let mut conn = state.pool.get().map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    let updated: FolderRow = diesel::update(quizlet_folders::table.filter(quizlet_folders::id.eq(folder_id)))
        .set((
            quizlet_folders::title.eq(body.title.trim()),
            quizlet_folders::updated_at.eq(diesel::dsl::now),
        ))
        .get_result(&mut conn)
        .map_err(|_| StatusCode::NOT_FOUND)?;

    Ok(Json(updated))
}

pub async fn delete_folder(
    State(state): State<AppState>,
    Path(folder_id): Path<Uuid>,
) -> Result<StatusCode, StatusCode> {
    let mut conn = state.pool.get().map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    // из-за ON DELETE SET NULL сеты не пострадают
    let deleted = diesel::delete(quizlet_folders::table.filter(quizlet_folders::id.eq(folder_id)))
        .execute(&mut conn)
        .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    if deleted == 0 {
        return Err(StatusCode::NOT_FOUND);
    }

    Ok(StatusCode::NO_CONTENT)
}

pub async fn replace_folder_sets(
    State(state): State<AppState>,
    Path(folder_id): Path<Uuid>,
    Json(body): Json<ReplaceFolderSetsBody>,
) -> Result<Json<serde_json::Value>, StatusCode> {
    let mut conn = state.pool.get().map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    conn.transaction::<_, diesel::result::Error, _>(|conn| {
        // 1) folder exists?
        quizlet_folders::table
            .filter(quizlet_folders::id.eq(folder_id))
            .select(quizlet_folders::id)
            .first::<Uuid>(conn)?;

        // 2) очистить текущую папку
        diesel::update(quizlet_sets::table.filter(quizlet_sets::folder_id.eq(Some(folder_id))))
            .set(quizlet_sets::folder_id.eq::<Option<Uuid>>(None))
            .execute(conn)?;

        // 3) проставить folder_id указанным сетам
        if !body.set_ids.is_empty() {
            diesel::update(quizlet_sets::table.filter(quizlet_sets::id.eq_any(&body.set_ids)))
                .set(quizlet_sets::folder_id.eq(Some(folder_id)))
                .execute(conn)?;
        }

        Ok(())
    })
    .map_err(|e| {
        if matches!(e, diesel::result::Error::NotFound) {
            StatusCode::NOT_FOUND
        } else {
            eprintln!("replace_folder_sets error: {e}");
            StatusCode::CONFLICT
        }
    })?;

    Ok(Json(serde_json::json!({ "ok": true })))
}

#[derive(Debug, Serialize, Queryable)]
pub struct FolderSetItem {
    pub id: Uuid,
    pub slug: String,
    pub title: String,
    pub created_at: DateTime<Utc>,
    pub updated_at: DateTime<Utc>,
}

pub async fn list_folder_sets(
    State(state): State<AppState>,
    Path(folder_id): Path<Uuid>,
) -> Result<Json<Vec<FolderSetItem>>, StatusCode> {
    let mut conn = state.pool.get().map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    let items = quizlet_sets::table
        .filter(quizlet_sets::folder_id.eq(Some(folder_id)))
        .select((quizlet_sets::id, quizlet_sets::slug, quizlet_sets::title, quizlet_sets::created_at, quizlet_sets::updated_at))
        .order(quizlet_sets::updated_at.desc())
        .load::<FolderSetItem>(&mut conn)
        .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    Ok(Json(items))
}
