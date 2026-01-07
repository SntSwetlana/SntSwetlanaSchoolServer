use axum::{
    extract::{State, Json},
    http::StatusCode,
    response::IntoResponse,
};
use serde::{Deserialize, Serialize};
use tower_cookies::{Cookies, Cookie};

use crate::AppState;

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
    State(_state): State<AppState>,
    cookies: Cookies,
    Json(req): Json<LoginReq>,
) -> impl IntoResponse {
    // Пример: креды в env (быстро, но без БД)
    let admin_user = std::env::var("ADMIN_USERNAME").unwrap_or_else(|_| "admin".to_string());
    let admin_pass = std::env::var("ADMIN_PASSWORD").unwrap_or_else(|_| "admin".to_string());

    // "существует/не существует" – здесь user_not_found если username не совпал
    if req.username != admin_user {
        return (StatusCode::UNAUTHORIZED, 
            Json(LoginResp { ok: false, roles: vec![], reason: "user_not_found".to_string() }));
    }

    // "совпадает/не совпадает пароль"
    if req.password != admin_pass {
        return (StatusCode::UNAUTHORIZED, 
            Json(LoginResp { ok: false, roles: vec![], reason: "wrong_password".to_string() }));
    }

    // Успех: ставим cookie-сессию (HttpOnly)
    let mut c = Cookie::new("admin_session", "ok");
    c.set_http_only(true);
    c.set_path("/");
    // В проде: c.set_secure(true); c.set_same_site(...);
    cookies.add(c);

    (
        StatusCode::OK, 
        Json(LoginResp {
             ok: true, 
             roles: vec!["admin".to_string()], 
             reason: "ok".to_string(), 
            })
        )
}
#[derive(Debug, Serialize)]
pub struct LogoutResp {
    pub ok: bool,
}

pub async fn logout(cookies: Cookies) -> impl IntoResponse {
    let mut c = Cookie::new("admin_session", "");
    c.set_path("/");
    cookies.remove(c);

    (StatusCode::OK, Json(LogoutResp { ok: true }))
}

#[derive(Serialize)]
pub struct SessionMeResponse {
    pub ok: bool,
    pub roles: Vec<String>,
}

pub async fn session_me(cookies: Cookies) -> impl IntoResponse {
    let ok = cookies
        .get("admin_session")
        .map(|c| c.value() == "ok")
        .unwrap_or(false);

    if !ok {
        return (
            StatusCode::UNAUTHORIZED,
            Json(SessionMeResponse { ok: false, roles: vec![] }),
        );
    }

    (
        StatusCode::OK,
        Json(SessionMeResponse { ok: true, roles: vec!["admin".into()] }),
    )
}