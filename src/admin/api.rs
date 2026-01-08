use diesel::sql_types::Text;
use axum::{
    extract::{State, Path, Query, Extension},
    http::StatusCode,
    response::Json,
};
use diesel::prelude::*;
use serde::{Deserialize, Serialize};
use uuid::Uuid;

use crate::{models::users::{AdminCreateUserReq, NewLocalCredentialDb, NewUserDb, User}, schema::local_credentials};


use crate::{
    AppState,
    models::{UpdateUser},
    schema::users::dsl::*,
    auth::middleware::AuthContext,
    models::audit::write_audit,
};

#[derive(Deserialize)]
pub struct UsersQuery {
    pub q: Option<String>,
}

#[derive(Serialize)]
pub struct UsersResponse {
    pub users: Vec<User>,
}

#[derive(QueryableByName)]
struct HashResult {
    #[diesel(sql_type = Text)]
    crypt: String,
}
pub async fn list_users(
    State(state): State<AppState>,
    Query(params): Query<UsersQuery>,
) -> Result<Json<UsersResponse>, StatusCode> {
    let mut conn = state.pool.get().map_err(|_| StatusCode::SERVICE_UNAVAILABLE)?;

    let mut query = users.into_boxed();

    if let Some(q) = params.q.as_ref().filter(|s| !s.trim().is_empty()) {
        let pattern = format!("%{}%", q.trim());
        query = query.filter(
            email.ilike(pattern.clone()).or(auth0_id.ilike(pattern.clone()))
        );
    }

    let list = query
        .select(User::as_select())
        .order(created_at.desc())
        .load::<User>(&mut conn)
        .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    Ok(Json(UsersResponse { users: list }))
}

pub async fn create_user(
    State(state): State<AppState>,
    Extension(ctx): Extension<AuthContext>,
    Json(payload): Json<AdminCreateUserReq>,
) -> Result<Json<User>, StatusCode> {
    // Если хотите не только admin-роль, а permission:
    // if !ctx.has_perm("users.create") { return Err(StatusCode::FORBIDDEN); }

    let mut conn = state.pool.get().map_err(|_| StatusCode::SERVICE_UNAVAILABLE)?;

    let auth0_id_ = format!("local|{}", payload.username.trim());

    let new_user = NewUserDb {
        auth0_id: auth0_id_,
        username: Some(payload.username.trim().to_string()),
        full_name: Some(payload.full_name.trim().to_string()),
        gender: Some(payload.gender.trim().to_string()),
        email: Some(payload.email.trim().to_string()),
    };
    let created = diesel::insert_into(users)
        .values(&new_user)
        .returning(User::as_select())
        .get_result::<User>(&mut conn)
        .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    // audit
//    let hash: String = diesel::select(diesel::dsl::sql::<diesel::sql_types::Text>(
//        "crypt($1, gen_salt('bf'))"
//    ))
//    .bind::<diesel::sql_types::Text, _>(payload.password)
//    .get_result(&mut conn)
//    .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

let result: HashResult  = diesel::sql_query("SELECT crypt($1, gen_salt('bf')) as crypt")
        .bind::<diesel::sql_types::Text, _>(&payload.password)
        .get_result(&mut conn)
       .map_err(|e| {
        eprintln!("Failed to generate password hash: {:?}", e);
        StatusCode::INTERNAL_SERVER_ERROR
    })?;

    let hash = result.crypt;
    diesel::insert_into(local_credentials::table)
        .values(&NewLocalCredentialDb {
            user_id: created.id,
            password_hash: hash,
        })
        .execute(&mut conn)
        .map_err(|e| {
            eprintln!("Failed to save password credentials: {:?}", e);
            StatusCode::INTERNAL_SERVER_ERROR
        })?;

    write_audit(
        &mut conn,
        Some(ctx.user_id),
        "user.create",
        "user",
        created.id,
            Some(serde_json::json!({
            "auth0_id": created.auth0_id,
            "email": created.email,
            "username": created.username,
        })),
    ).map_err(|e| {
        eprintln!("Failed to write audit log: {:?}", e);
        StatusCode::INTERNAL_SERVER_ERROR
    })?;

    Ok(Json(created))
}

pub async fn update_user(
    Path(user_id): Path<Uuid>,
    State(state): State<AppState>,
    Extension(ctx): Extension<AuthContext>,
    Json(payload): Json<UpdateUser>,
) -> Result<Json<User>, StatusCode> {
    // if !ctx.has_perm("users.update") { return Err(StatusCode::FORBIDDEN); }

    let mut conn = state.pool.get().map_err(|_| StatusCode::SERVICE_UNAVAILABLE)?;

    let updated = diesel::update(users.find(user_id))
        .set(&payload)
        .get_result::<User>(&mut conn)
        .map_err(|e| {
            // если id не найден
            if let diesel::result::Error::NotFound = e {
                StatusCode::NOT_FOUND
            } else {
                StatusCode::INTERNAL_SERVER_ERROR
            }
        })?;

    write_audit(
        &mut conn,
        Some(ctx.user_id),
        "user.update",
        "user",
        updated.id,
        Some(serde_json::json!({ "email": updated.email })),
    ).map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    Ok(Json(updated))
}

pub async fn delete_user(
    Path(user_id): Path<Uuid>,
    State(state): State<AppState>,
    Extension(ctx): Extension<AuthContext>,
) -> Result<StatusCode, StatusCode> {
    // if !ctx.has_perm("users.delete") { return Err(StatusCode::FORBIDDEN); }

    let mut conn = state.pool.get().map_err(|_| StatusCode::SERVICE_UNAVAILABLE)?;

    let affected = diesel::delete(users.find(user_id))
        .execute(&mut conn)
        .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    if affected == 0 {
        return Err(StatusCode::NOT_FOUND);
    }

    write_audit(
        &mut conn,
        Some(ctx.user_id),
        "user.delete",
        "user",
        user_id,
        None,
    ).map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    Ok(StatusCode::NO_CONTENT)
}
