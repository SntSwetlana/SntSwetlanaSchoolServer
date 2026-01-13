use axum::{
    body::Body,
    extract::{Request, State},
    http::StatusCode,
    middleware::Next,
    response::Response,
};
use diesel::prelude::*;
use std::collections::HashSet;
use tower_cookies::Cookies;
use uuid::Uuid;

use crate::auth::context::AuthContext;
use crate::models::User;
use crate::schema::{permissions, role_permissions, roles, user_roles, users};
use crate::AppState;

#[derive(Clone, Debug)]
pub struct AuthenticatedUser {
    pub id: Uuid,
    pub auth0_id: String,
    pub email: Option<String>,
}

/// Единственный источник аутентификации:
/// - cookie `sid` (HttpOnly) -> server-side session in DB -> user_id
/// - далее грузим роли/permissions -> кладём AuthContext в request extensions
pub async fn session_middleware(
    State(state): State<AppState>,
    cookies: Cookies,
    mut req: Request,
    next: Next,
) -> Result<Response, StatusCode> {
    // 1) достаём sid cookie
    let sid = cookies
        .get("sid")
        .ok_or(StatusCode::UNAUTHORIZED)?
        .value()
        .to_string();

    // 2) берём connection
    let mut conn = state
        .pool
        .get()
        .map_err(|_| StatusCode::SERVICE_UNAVAILABLE)?;

    // 3) валидируем server-side session -> user_id
    let user_id = crate::auth::session::lookup_session_user(
        &mut conn,
        &state.session_secret,
        &sid,
    )
    .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?
    .ok_or(StatusCode::UNAUTHORIZED)?;

    // 4) грузим auth context (roles/permissions)
    let ctx = load_auth_context(&mut conn, user_id)
        .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    req.extensions_mut().insert(ctx);

    // 5) (Опционально) кладём AuthenticatedUser для удобства handler'ов
    // Если тебе это не нужно — блок можно убрать.
    let u = users::table
        .find(user_id)
        .select(User::as_select())
        .first::<User>(&mut conn)
        .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    req.extensions_mut().insert(AuthenticatedUser {
        id: u.id,
        auth0_id: u.auth0_id,
        email: u.email,
    });

    Ok(next.run(req).await)
}

/// Грузит roles + permissions из БД (RBAC).
pub fn load_auth_context(
    conn: &mut PgConnection,
    uid: Uuid,
) -> Result<AuthContext, diesel::result::Error> {
    // роли пользователя
    let role_keys: Vec<String> = user_roles::table
        .inner_join(roles::table.on(roles::id.eq(user_roles::role_id)))
        .filter(user_roles::user_id.eq(uid))
        .select(roles::key)
        .load(conn)?;

    // permissions через роли
    let perm_keys: Vec<String> = user_roles::table
        .inner_join(role_permissions::table.on(role_permissions::role_id.eq(user_roles::role_id)))
        .inner_join(permissions::table.on(permissions::id.eq(role_permissions::permission_id)))
        .filter(user_roles::user_id.eq(uid))
        .select(permissions::key)
        .distinct()
        .load(conn)?;

    Ok(AuthContext {
        user_id: uid,
        roles: role_keys,
        permissions: perm_keys.into_iter().collect::<HashSet<_>>(),
    })
}

/// Guard: доступ администратора (роль admin или permission roles.assign)
pub async fn require_admin(req: Request<Body>, next: Next) -> Result<Response, StatusCode> {
    let ctx = req
        .extensions()
        .get::<AuthContext>()
        .ok_or(StatusCode::UNAUTHORIZED)?;

    if !(ctx.has_role("admin") || ctx.has_perm("roles.assign")) {
        return Err(StatusCode::FORBIDDEN);
    }

    Ok(next.run(req).await)
}

pub async fn require_teacher(req: Request<Body>, next: Next) -> Result<Response, StatusCode> {
    let ctx = req
        .extensions()
        .get::<AuthContext>()
        .ok_or(StatusCode::UNAUTHORIZED)?;

    if !(ctx.has_role("teacher") || ctx.has_role("admin")) {
        return Err(StatusCode::FORBIDDEN);
    }

    Ok(next.run(req).await)
}

pub async fn require_editor(req: Request<Body>, next: Next) -> Result<Response, StatusCode> {
    let ctx = req
        .extensions()
        .get::<AuthContext>()
        .ok_or(StatusCode::UNAUTHORIZED)?;

    if !(ctx.has_role("editor") || ctx.has_role("admin")) {
        return Err(StatusCode::FORBIDDEN);
    }

    Ok(next.run(req).await)
}
