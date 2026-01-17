use axum::{
    extract::{State, Path, Query, Extension},
    http::StatusCode,
    response::IntoResponse,
    Json,
};
use serde::{Deserialize, Serialize};
use uuid::Uuid;

use crate::{AppState, auth::context::AuthContext};

#[derive(Serialize)]
pub struct ApiResponse<T> {
    pub ok: bool,
    pub data: T,
}

#[derive(Serialize)]
pub struct PaginatedResponse<T> {
    pub ok: bool,
    pub items: Vec<T>,
    pub page: i64,
    pub limit: i64,
    pub total: i64,
}

#[derive(Deserialize)]
pub struct SubjectsQuery {
    pub page: Option<i64>,
    pub limit: Option<i64>,
    pub search: Option<String>,
    pub sortBy: Option<String>,
    pub sortOrder: Option<String>,
}

#[derive(Serialize)]
pub struct SubjectListItem {
    pub id: String,
    pub name: String,
    pub description: Option<String>,
    pub color: String,
    pub icon: Option<String>,
    pub order: i32,
    pub isActive: bool,
    pub createdAt: String,
    pub updatedAt: String,
    pub createdBy: String,
    pub assignmentCount: i64,
}

#[derive(Deserialize)]
pub struct CreateSubjectReq {
    pub name: String,
    pub description: Option<String>,
    pub color: Option<String>,
    pub icon: Option<String>,
    pub order: Option<i32>,
}

#[derive(Deserialize)]
pub struct UpdateSubjectReq {
    pub name: Option<String>,
    pub description: Option<String>,
    pub color: Option<String>,
    pub icon: Option<String>,
    pub order: Option<i32>,
    pub isActive: Option<bool>,
}

#[derive(Serialize)]
pub struct SubjectAssignmentItem {
    pub id: String,
    pub title: String,
    pub gradeLevel: i32,
    pub difficulty: String,
}

#[derive(Serialize)]
pub struct SubjectStatistics {
    pub totalAssignments: i64,
    pub publishedAssignments: i64,
    pub averageDifficulty: f64,
    pub totalTimeEstimate: i64,
}

#[derive(Serialize)]
pub struct SubjectDetail {
    pub id: String,
    pub name: String,
    pub description: Option<String>,
    pub color: String,
    pub icon: Option<String>,
    pub order: i32,
    pub isActive: bool,
    pub createdAt: String,
    pub updatedAt: String,
    pub createdBy: String,
    pub assignments: Vec<SubjectAssignmentItem>,
    pub statistics: SubjectStatistics,
}

// -------------------------
// JSON endpoints (SPA)
// -------------------------

pub async fn list_subjects(
    State(_state): State<AppState>,
    Extension(_ctx): Extension<AuthContext>,
    Query(q): Query<SubjectsQuery>,
) -> impl IntoResponse {
    let page = q.page.unwrap_or(1).max(1);
    let limit = q.limit.unwrap_or(20).clamp(1, 100);

    // TODO: Diesel query:
    // - subjects list with pagination
    // - search by name (ilike)
    // - sort
    // - assignmentCount via join/count
    // - total count

    let empty: Vec<SubjectListItem> = vec![];

    (
        StatusCode::OK,
        Json(PaginatedResponse {
            ok: true,
            items: empty,
            page,
            limit,
            total: 0,
        }),
    )
}

pub async fn get_subject(
    State(_state): State<AppState>,
    Extension(_ctx): Extension<AuthContext>,
    Path(_id): Path<Uuid>,
) -> impl IntoResponse {
    // TODO: Diesel query:
    // - subject by id
    // - assignments list (content_items kind='assignment')
    // - statistics (count, published, avg difficulty, sum time)

    (
        StatusCode::NOT_IMPLEMENTED,
        Json(ApiResponse {
            ok: false,
            data: serde_json::json!({ "reason": "not_implemented" }),
        }),
    )
}

pub async fn create_subject(
    State(_state): State<AppState>,
    Extension(_ctx): Extension<AuthContext>,
    Json(_payload): Json<CreateSubjectReq>,
) -> impl IntoResponse {
    // TODO: require permission/role in middleware (лучше в main.rs)
    // TODO: Diesel insert subjects + return created subject

    (
        StatusCode::NOT_IMPLEMENTED,
        Json(ApiResponse {
            ok: false,
            data: serde_json::json!({ "reason": "not_implemented" }),
        }),
    )
}

pub async fn update_subject(
    State(_state): State<AppState>,
    Extension(_ctx): Extension<AuthContext>,
    Path(_id): Path<Uuid>,
    Json(_payload): Json<UpdateSubjectReq>,
) -> impl IntoResponse {
    // TODO: Diesel update subjects + return updated subject

    (
        StatusCode::NOT_IMPLEMENTED,
        Json(ApiResponse {
            ok: false,
            data: serde_json::json!({ "reason": "not_implemented" }),
        }),
    )
}

pub async fn delete_subject(
    State(_state): State<AppState>,
    Extension(_ctx): Extension<AuthContext>,
    Path(_id): Path<Uuid>,
) -> impl IntoResponse {
    // TODO:
    // - delete subject
    // - cascade delete links in subject_content_items
    // - optionally count deleted assignments/templates (if you also delete content)

    (
        StatusCode::NOT_IMPLEMENTED,
        Json(ApiResponse {
            ok: false,
            data: serde_json::json!({ "reason": "not_implemented" }),
        }),
    )
}
