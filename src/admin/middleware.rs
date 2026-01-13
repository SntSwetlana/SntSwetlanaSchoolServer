use axum::{
    extract::Request,
    http::{header, HeaderValue, StatusCode},
    middleware::Next,
    response::Response,
};
use base64::{engine::general_purpose, Engine as _};

pub async fn admin_middleware(req: Request, next: Next) -> Result<Response, StatusCode> {
    let expected_user =
        std::env::var("ADMIN_LOGIN").map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;
    let expected_pass =
        std::env::var("ADMIN_PASSWORD").map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    let auth = req
        .headers()
        .get(header::AUTHORIZATION)
        .and_then(|v| v.to_str().ok())
        .ok_or(StatusCode::UNAUTHORIZED)?;

    let b64 = auth.strip_prefix("Basic ").ok_or(StatusCode::UNAUTHORIZED)?;
    let decoded = general_purpose::STANDARD
        .decode(b64)
        .map_err(|_| StatusCode::UNAUTHORIZED)?;

    let decoded = String::from_utf8(decoded).map_err(|_| StatusCode::UNAUTHORIZED)?;
    let (user, pass) = decoded.split_once(':').ok_or(StatusCode::UNAUTHORIZED)?;

    if user != expected_user || pass != expected_pass {
        return Err(StatusCode::UNAUTHORIZED);
    }

    Ok(next.run(req).await)
}
