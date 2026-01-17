use axum::{
    extract::{State, Json, Extension},
    http::StatusCode,
    response::IntoResponse,
};
use serde::{Deserialize, Serialize};
use tower_cookies::{Cookies, Cookie};
use diesel::prelude::*;
use diesel::sql_types::Bool;

use crate::{AppState, auth::context::AuthContext, models::User, schema::users::dsl  as u};
use uuid::Uuid;
#[derive(diesel::QueryableByName)]
struct PasswordOkRow {
    #[diesel(sql_type = Bool)]
    ok: bool,
}

#[derive(Debug, Deserialize)]
pub struct LoginReq {
    pub username: String,
    pub password: String,
}

#[derive(Debug, Serialize)]
pub struct LoginResp {
    pub ok: bool,
    pub roles: Vec<String>,
    pub reason: String,
}

pub async fn login(
    State(state): State<AppState>,
    cookies: Cookies,
    Json(req): Json<LoginReq>,
) -> impl IntoResponse {
    let mut conn = match state.pool.get() {
        Ok(c) => c,
        Err(_) => {
            return (StatusCode::SERVICE_UNAVAILABLE, Json(LoginResp {
                ok: false, roles: vec![], reason: "db_unavailable".into(),
            }));
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
         WHERE user_id = $2"
    )
    .bind::<diesel::sql_types::Text, _>(&req.password)
    .bind::<diesel::sql_types::Uuid, _>(user_id)
    .get_result::<PasswordOkRow>(&mut conn)
    {
        Ok(row) => row.ok,
        Err(_) => false,
    };

    if !password_ok {
        return (StatusCode::UNAUTHORIZED, Json(LoginResp {
            ok: false, roles: vec![], reason: "wrong_password".into(),
        }));
    }

    // Создаём server-side session (например, 7 дней)
    let sid = match crate::auth::session::create_session(&mut conn, &state.session_secret, user_id, 7) {
        Ok(s) => s,
        Err(_) => {
            return (StatusCode::INTERNAL_SERVER_ERROR, Json(LoginResp {
                ok: false, roles: vec![], reason: "session_create_failed".into(),
            }));
        }
    };

    // Cookie sid: HttpOnly, Lax (один домен), Secure в проде
    let mut c = Cookie::new("sid", sid);
    c.set_http_only(true);
    c.set_path("/");
    c.set_same_site(tower_cookies::cookie::SameSite::Lax);

    // В DEV на http://localhost secure=false.
    // В PROD на https secure=true.
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
    (StatusCode::OK, Json(LoginResp { ok: true, roles, reason: "ok".into() }))
}

#[derive(Serialize)]
pub struct LogoutResp {
    pub ok: bool,
}

pub async fn logout(
    State(state): State<AppState>,
    cookies: Cookies,
) -> impl IntoResponse {
    if let Some(c) = cookies.get("sid") {
        if let Ok(mut conn) = state.pool.get() {
            let _ = crate::auth::session::revoke_session(&mut conn, &state.session_secret, c.value());
        }
        let mut del = Cookie::new("sid", "");
        del.set_path("/");
        cookies.remove(del);
    }

    (StatusCode::OK, Json(LogoutResp { ok: true }))
}


#[derive(Serialize)]
pub struct SessionMeResponse {
    pub ok: bool,
    pub id: String,
    pub username: String,
    pub email: Option<String>,
    pub gender: Option<String>,
    pub roles: Vec<String>,
    pub permissions: Vec<String>,
}

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

    // ВАЖНО: здесь мы получаем *ЗНАЧЕНИЯ*, а не колонки
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

#[derive(Serialize)]
pub struct MeResponse {
    pub id: String,
    pub email: Option<String>,
    pub roles: Vec<String>,
}

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