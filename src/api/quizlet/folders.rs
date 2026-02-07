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
use crate::schema::{quizlet_folder_sets, quizlet_folders, quizlet_sets};

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
pub struct AddSetsToFolderBody {
    pub set_ids: Vec<Uuid>,
}
#[derive(Debug, Deserialize)]
pub struct ReplaceFolderSetsBody {
    pub set_ids: Vec<Uuid>,
}

#[derive(Debug, Serialize, Queryable)]
pub struct FolderSetItem {
    pub id: Uuid,
    pub slug: String,
    pub title: String,
    pub created_at: DateTime<Utc>,
    pub updated_at: DateTime<Utc>,
    pub position: i32,
}

#[derive(Debug, Insertable)]
#[diesel(table_name = quizlet_folder_sets)]
struct NewFolderSet {
    folder_id: Uuid,
    set_id: Uuid,
    position: i32,
}

pub async fn list_folders(
    State(state): State<AppState>,
) -> Result<Json<Vec<FolderListItem>>, StatusCode> {
    let mut conn = state.pool.get().map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    let rows: Vec<(Uuid, String, DateTime<Utc>, i64)> = quizlet_folders::table
        .left_join(
            quizlet_folder_sets::table.on(quizlet_folder_sets::folder_id.eq(quizlet_folders::id)),
        )
        .group_by((quizlet_folders::id, quizlet_folders::title, quizlet_folders::updated_at))
        .select((
            quizlet_folders::id,
            quizlet_folders::title,
            quizlet_folders::updated_at,
            diesel::dsl::count(quizlet_folder_sets::set_id.nullable()),
        ))
        .order_by(quizlet_folders::updated_at.desc())
        .load(&mut conn)
        .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    Ok(Json(
        rows.into_iter()
            .map(|(id, title, updated_at, sets_count)| FolderListItem {
                id,
                title,
                sets_count,
                updated_at,
            })
            .collect(),
    ))
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

    let deleted = diesel::delete(quizlet_folders::table.filter(quizlet_folders::id.eq(folder_id)))
        .execute(&mut conn)
        .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    if deleted == 0 {
        return Err(StatusCode::NOT_FOUND);
    }

    Ok(StatusCode::NO_CONTENT)
}

pub async fn list_folder_sets(
    State(state): State<AppState>,
    Path(folder_id): Path<Uuid>,
) -> Result<Json<Vec<FolderSetItem>>, StatusCode> {
    let mut conn = state.pool.get().map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    let items = quizlet_folder_sets::table
        .inner_join(quizlet_sets::table.on(quizlet_sets::id.eq(quizlet_folder_sets::set_id)))
        .filter(quizlet_folder_sets::folder_id.eq(folder_id))
        .select((
            quizlet_sets::id,
            quizlet_sets::slug,
            quizlet_sets::title,
            quizlet_sets::created_at,
            quizlet_sets::updated_at,
            quizlet_folder_sets::position,
        ))
        .order(quizlet_folder_sets::position.asc())
        .load::<FolderSetItem>(&mut conn)
        .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    Ok(Json(items))
}

pub async fn add_sets_to_folder(
    State(state): State<AppState>,
    Path(folder_id): Path<Uuid>,
    Json(body): Json<AddSetsToFolderBody>,
) -> Result<Json<serde_json::Value>, StatusCode> {
    if body.set_ids.is_empty() {
        return Err(StatusCode::BAD_REQUEST);
    }

    let mut conn = state.pool.get().map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    conn.transaction::<_, diesel::result::Error, _>(|conn| {
        // folder exists?
        quizlet_folders::table
            .filter(quizlet_folders::id.eq(folder_id))
            .select(quizlet_folders::id)
            .first::<Uuid>(conn)?;

        // append to end
        let max_pos: Option<i32> = quizlet_folder_sets::table
            .filter(quizlet_folder_sets::folder_id.eq(folder_id))
            .select(diesel::dsl::max(quizlet_folder_sets::position))
            .first(conn)
            .optional()?
            .flatten();

        let mut pos = max_pos.unwrap_or(-1) + 1;

        let rows: Vec<NewFolderSet> = body
            .set_ids
            .iter()
            .map(|set_id| {
                let row = NewFolderSet {
                    folder_id,
                    set_id: *set_id,
                    position: pos,
                };
                pos += 1;
                row
            })
            .collect();

        diesel::insert_into(quizlet_folder_sets::table)
            .values(&rows)
            .on_conflict((quizlet_folder_sets::folder_id, quizlet_folder_sets::set_id))
            .do_nothing()
            .execute(conn)?;

        diesel::update(quizlet_folders::table.filter(quizlet_folders::id.eq(folder_id)))
            .set(quizlet_folders::updated_at.eq(Utc::now()))
            .execute(conn)?;

        Ok(())
    })
    .map_err(|e| {
        if matches!(e, diesel::result::Error::NotFound) {
            StatusCode::NOT_FOUND
        } else {
            eprintln!("add_sets_to_folder error: {e}");
            StatusCode::CONFLICT
        }
    })?;

    Ok(Json(serde_json::json!({ "ok": true })))
}

pub async fn replace_folder_sets(
    State(state): State<AppState>,
    Path(folder_id): Path<Uuid>,
    Json(body): Json<ReplaceFolderSetsBody>,
) -> Result<Json<serde_json::Value>, StatusCode> {
    let mut conn = state.pool.get().map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    conn.transaction::<_, diesel::result::Error, _>(|conn| {
        quizlet_folders::table
            .filter(quizlet_folders::id.eq(folder_id))
            .select(quizlet_folders::id)
            .first::<Uuid>(conn)?;

        // wipe links
        diesel::delete(quizlet_folder_sets::table.filter(quizlet_folder_sets::folder_id.eq(folder_id)))
            .execute(conn)?;

        // insert new list with positions
        let rows: Vec<NewFolderSet> = body
            .set_ids
            .iter()
            .enumerate()
            .map(|(i, set_id)| NewFolderSet {
                folder_id,
                set_id: *set_id,
                position: i as i32,
            })
            .collect();

        if !rows.is_empty() {
            diesel::insert_into(quizlet_folder_sets::table)
                .values(&rows)
                .execute(conn)?;
        }

        diesel::update(quizlet_folders::table.filter(quizlet_folders::id.eq(folder_id)))
            .set(quizlet_folders::updated_at.eq(Utc::now()))
            .execute(conn)?;

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

pub async fn remove_set_from_folder(
    State(state): State<AppState>,
    Path((folder_id, set_id)): Path<(Uuid, Uuid)>,
) -> Result<StatusCode, StatusCode> {
    let mut conn = state.pool.get().map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    let deleted = diesel::delete(
        quizlet_folder_sets::table
            .filter(quizlet_folder_sets::folder_id.eq(folder_id))
            .filter(quizlet_folder_sets::set_id.eq(set_id)),
    )
    .execute(&mut conn)
    .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    if deleted == 0 {
        return Err(StatusCode::NOT_FOUND);
    }

    // bump folder updated_at (не критично, но полезно)
    let _ = diesel::update(quizlet_folders::table.filter(quizlet_folders::id.eq(folder_id)))
        .set(quizlet_folders::updated_at.eq(Utc::now()))
        .execute(&mut conn);

    Ok(StatusCode::NO_CONTENT)
}