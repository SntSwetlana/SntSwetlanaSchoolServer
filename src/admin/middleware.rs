use axum::{
    extract::Request,
    http::StatusCode,
    middleware::Next,
    response::{IntoResponse, Response, Redirect},
};
use tower_cookies::Cookies;

pub async fn admin_middleware(
    cookies: Cookies,
    req: Request,
    next: Next,
) -> Result<Response, StatusCode> {
    let ok = cookies
        .get("admin_session")
        .map(|c| c.value() == "ok") // минимально; ниже улучшения
        .unwrap_or(false);

    if !ok {
        return Ok(Redirect::to("/admin/login").into_response());
    }

    Ok(next.run(req).await)
}

