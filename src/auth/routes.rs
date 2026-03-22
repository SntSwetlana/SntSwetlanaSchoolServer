use axum::{
    extract::{Extension, Json, State},
    http::StatusCode,
    response::IntoResponse,
};
use diesel::prelude::*;
use diesel::sql_types::Bool;
use serde::{Deserialize, Serialize};
use tower_cookies::{Cookie, Cookies};
use utoipa::ToSchema;
use uuid::Uuid;

use crate::{
    auth::context::AuthContext,
    models::User,
    schema::users::dsl as u,
    AppState,
};

#[derive(diesel::QueryableByName)]
struct PasswordOkRow {
    #[diesel(sql_type = Bool)]
    ok: bool,
}

#[derive(Debug, Deserialize, ToSchema)]
pub struct LoginReq {
    pub username: String,
    pub password: String,
}

#[derive(Debug, Serialize, ToSchema)]
pub struct LoginResp {
    pub ok: bool,
    pub roles: Vec<String>,
    pub reason: String,
}

#[derive(Debug, Serialize, ToSchema)]
pub struct LogoutResp {
    pub ok: bool,
}

#[derive(Debug, Serialize, ToSchema)]
pub struct SessionMeResponse {
    pub ok: bool,
    pub id: String,
    pub username: String,
    pub email: Option<String>,
    pub gender: Option<String>,
    pub roles: Vec<String>,
    pub permissions: Vec<String>,
}

#[derive(Debug, Serialize, ToSchema)]
pub struct MeResponse {
    pub id: String,
    pub email: Option<String>,
    pub roles: Vec<String>,
}

#[derive(Debug, Serialize, ToSchema)]
pub struct ApiError {
    pub ok: bool,
    pub reason: String,
}

#[utoipa::path(
    post,
    path = "/api/auth/login",
    tag = "Auth",
    request_body = LoginReq,
    responses(
        (status = 200, description = "Login successful", body = LoginResp),
        (status = 401, description = "Invalid credentials", body = LoginResp),
        (status = 503, description = "Database unavailable", body = LoginResp),
        (status = 500, description = "Internal server error", body = LoginResp)
    )
)]
pub async fn login(
    State(state): State<AppState>,
    cookies: Cookies,
    Json(req): Json<LoginReq>,
) -> impl IntoResponse {
    let mut conn = match state.pool.get() {
        Ok(c) => c,
        Err(_) => {
            return (
                StatusCode::SERVICE_UNAVAILABLE,
                Json(LoginResp {
                    ok: false,
                    roles: vec![],
                    reason: "db_unavailable".into(),
                }),
            );
        }
    };

    let uname = req.username.trim().to_string();

    let user_id: Uuid = match u::users
        .filter(u::username.eq(Some(uname)))
        .select(u::id)
        .first::<Uuid>(&mut conn)
    {
        Ok(uid) => uid,

        Err(diesel::result::Error::NotFound) => {
            return (
                StatusCode::UNAUTHORIZED,
                Json(LoginResp {
                    ok: false,
                    roles: vec![],
                    reason: "user_not_found".into(),
                }),
            );
        }

        Err(_) => {
            return (
                StatusCode::INTERNAL_SERVER_ERROR,
                Json(LoginResp {
                    ok: false,
                    roles: vec![],
                    reason: "db_error".into(),
                }),
            );
        }
    };

    let password_ok: bool = match diesel::sql_query(
        "SELECT (password_hash = crypt($1, password_hash)) AS ok
         FROM local_credentials
         WHERE user_id = $2",
    )
    .bind::<diesel::sql_types::Text, _>(&req.password)
    .bind::<diesel::sql_types::Uuid, _>(user_id)
    .get_result::<PasswordOkRow>(&mut conn)
    {
        Ok(row) => row.ok,
        Err(_) => false,
    };

    if !password_ok {
        return (
            StatusCode::UNAUTHORIZED,
            Json(LoginResp {
                ok: false,
                roles: vec![],
                reason: "wrong_password".into(),
            }),
        );
    }

    let sid = match crate::auth::session::create_session(
        &mut conn,
        &state.session_secret,
        user_id,
        7,
    ) {
        Ok(s) => s,
        Err(_) => {
            return (
                StatusCode::INTERNAL_SERVER_ERROR,
                Json(LoginResp {
                    ok: false,
                    roles: vec![],
                    reason: "session_create_failed".into(),
                }),
            );
        }
    };

    let mut c = Cookie::new("sid", sid);
    c.set_http_only(true);
    c.set_path("/");
    c.set_same_site(tower_cookies::cookie::SameSite::Lax);

    if std::env::var("APP_ENV").unwrap_or_default() == "production" {
        c.set_secure(true);
    }

    cookies.add(c);

    let ctx = crate::auth::middleware::load_auth_context(&mut conn, user_id)
        .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR);

    let roles = match ctx {
        Ok(ctx) => ctx.roles,
        Err(_) => vec![],
    };

    (
        StatusCode::OK,
        Json(LoginResp {
            ok: true,
            roles,
            reason: "ok".into(),
        }),
    )
}

#[utoipa::path(
    post,
    path = "/api/auth/logout",
    tag = "Auth",
    security(
        ("cookieAuth" = [])
    ),
    responses(
        (status = 200, description = "Logout successful", body = LogoutResp)
    )
)]
pub async fn logout(
    State(state): State<AppState>,
    cookies: Cookies,
) -> impl IntoResponse {
    if let Some(c) = cookies.get("sid") {
        if let Ok(mut conn) = state.pool.get() {
            let _ = crate::auth::session::revoke_session(
                &mut conn,
                &state.session_secret,
                c.value(),
            );
        }
        let mut del = Cookie::new("sid", "");
        del.set_path("/");
        cookies.remove(del);
    }

    (StatusCode::OK, Json(LogoutResp { ok: true }))
}

#[utoipa::path(
    get,
    path = "/api/auth/me",
    tag = "Auth",
    security(
        ("cookieAuth" = [])
    ),
    responses(
        (status = 200, description = "Current authenticated user", body = SessionMeResponse),
        (status = 401, description = "Unauthorized", body = SessionMeResponse),
        (status = 503, description = "Database unavailable", body = SessionMeResponse),
        (status = 500, description = "Internal server error", body = SessionMeResponse)
    )
)]
pub async fn session_me(
    State(state): State<AppState>,
    Extension(ctx): Extension<AuthContext>,
) -> impl IntoResponse {
    let mut conn = match state.pool.get() {
        Ok(c) => c,
        Err(_) => {
            return (
                StatusCode::SERVICE_UNAVAILABLE,
                Json(SessionMeResponse {
                    ok: false,
                    id: "".into(),
                    username: "".into(),
                    email: None,
                    gender: None,
                    roles: vec![],
                    permissions: vec![],
                }),
            );
        }
    };

    let row = u::users
        .find(ctx.user_id)
        .select((u::id, u::username, u::email, u::gender))
        .first::<(Uuid, Option<String>, Option<String>, Option<String>)>(&mut conn);

    let (id, username_opt, email, gender) = match row {
        Ok(v) => v,
        Err(diesel::result::Error::NotFound) => {
            return (
                StatusCode::UNAUTHORIZED,
                Json(SessionMeResponse {
                    ok: false,
                    id: "".into(),
                    username: "".into(),
                    email: None,
                    gender: None,
                    roles: vec![],
                    permissions: vec![],
                }),
            );
        }
        Err(_) => {
            return (
                StatusCode::INTERNAL_SERVER_ERROR,
                Json(SessionMeResponse {
                    ok: false,
                    id: "".into(),
                    username: "".into(),
                    email: None,
                    gender: None,
                    roles: vec![],
                    permissions: vec![],
                }),
            );
        }
    };

    let mut permissions: Vec<String> = ctx.permissions.into_iter().collect();
    permissions.sort();

    (
        StatusCode::OK,
        Json(SessionMeResponse {
            ok: true,
            id: id.to_string(),
            username: username_opt.unwrap_or_else(|| "User".to_string()),
            email,
            gender,
            roles: ctx.roles,
            permissions,
        }),
    )
}

#[utoipa::path(
    get,
    path = "/api/me",
    tag = "Auth",
    security(
        ("cookieAuth" = [])
    ),
    responses(
        (status = 200, description = "Current user (short profile)", body = MeResponse),
        (status = 500, description = "Internal server error", body = ApiError)
    )
)]
pub async fn me_handler(
    State(state): State<AppState>,
    Extension(ctx): Extension<AuthContext>,
) -> Json<MeResponse> {
    let mut conn = state.pool.get().unwrap();
    let u: User = u::users.find(ctx.user_id).first(&mut conn).unwrap();

    Json(MeResponse {
        id: u.id.to_string(),
        email: u.email,
        roles: ctx.roles,
    })
}