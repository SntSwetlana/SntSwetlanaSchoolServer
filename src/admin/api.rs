use diesel::sql_types::Text;
use axum::{
    extract::{State, Path, Query, Extension},
    http::StatusCode,
    response::Json,
};
use diesel::prelude::*;
use serde::{Deserialize, Serialize};
use uuid::Uuid;

use crate::{
    models::users::{AdminCreateUserReq, NewLocalCredentialDb, NewUserDb, User}, 
    //schema::{local_credentials, roles, user_roles},
};

use crate::{
    AppState,
    models::{UpdateUser},
    //schema::users::dsl::*,
     auth::context::AuthContext,
    models::audit::write_audit,
};
use crate::schema::{users, user_roles, roles, local_credentials};
use crate::schema::users::dsl as u;



#[derive(Deserialize)]
pub struct UsersQuery {
    pub q: Option<String>,
}
#[derive(serde::Serialize)]
pub struct AdminUserDto {
    pub id: Uuid,
    pub username: Option<String>,
    pub email: Option<String>,
    pub full_name: Option<String>,
    pub gender: Option<String>,
    pub created_at: Option<chrono::NaiveDateTime>,
    pub role: String, // ОДНА роль
}

#[derive(Serialize)]
pub struct UsersResponse {
    pub users: Vec<AdminUserDto>,
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

    let mut q = users::table
        .left_join(user_roles::table.on(user_roles::user_id.eq(u::id)))
        .left_join(roles::table.on(roles::id.eq(user_roles::role_id)))
        .into_boxed();

    if let Some(s) = params.q.as_ref().filter(|s| !s.trim().is_empty()) {
        let pattern = format!("%{}%", s.trim());
        q = q.filter(
            u::email.ilike(pattern.clone())
                .or(u::username.ilike(pattern.clone()))
                .or(u::auth0_id.ilike(pattern)),
        );
    }

    let rows: Vec<(
        Uuid,
        Option<String>,
        Option<String>,
        Option<String>,
        Option<String>,
        Option<chrono::NaiveDateTime>,
        Option<String>,
    )> = q
        .select((
            u::id,
            u::username,
            u::email,
            u::full_name,
            u::gender,
            u::created_at,
            roles::key.nullable(),
        ))
        .order(u::created_at.desc())
        .load(&mut conn)
        .map_err(|e| {
            eprintln!("list_users error: {:?}", e);
            StatusCode::INTERNAL_SERVER_ERROR
        })?;

    let users = rows
        .into_iter()
        .map(|(user_id, user_username, user_email, user_full_name, user_gender, user_created_at, role_key)| {
            AdminUserDto {
                id: user_id,
                username: user_username,
                email: user_email,
                full_name: user_full_name,
                gender: user_gender,
                created_at: user_created_at,
                role: role_key.unwrap_or_else(|| "guest".to_string()),
            }
        })
        .collect();

    Ok(Json(UsersResponse { users }))
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

    let created = diesel::insert_into(u::users)
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

    let role_key = payload.role.trim().to_lowercase();

    let role_id: Uuid = roles::table
        .filter(roles::key.eq(role_key.clone()))
        .select(roles::id)
        .first(&mut conn)
        .map_err(|e| {
        eprintln!("Failed to find role '{}': {:?}", role_key, e);
        StatusCode::BAD_REQUEST // или NOT_FOUND, если хотите различать
    })?;

    diesel::insert_into(user_roles::table)
        .values((
            user_roles::user_id.eq(created.id),
            user_roles::role_id.eq(role_id),
            user_roles::assigned_by.eq(Some(ctx.user_id)),
        ))
        .on_conflict_do_nothing()
        .execute(&mut conn)
        .map_err(|e| {
        eprintln!("Failed to assign role: {:?}", e);
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
            "role": role_key,
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
    Json(payload): Json<UpdateUserDb>,
) -> Result<Json<User>, StatusCode> {
    // if !ctx.has_perm("users.update") { return Err(StatusCode::FORBIDDEN); }

    let mut conn = state.pool.get().map_err(|_| StatusCode::SERVICE_UNAVAILABLE)?;

    let updated = diesel::update(u::users.find(user_id))
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

    let affected = diesel::delete(u::users.find(user_id))
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
