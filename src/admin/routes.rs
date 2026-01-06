use axum::{
    extract::{Form, State, Extension, Path},
    response::{Html, IntoResponse, Redirect,  Json},
    http::StatusCode,
};
use serde::Deserialize;
use tower_cookies::{Cookies, Cookie};
use uuid::Uuid;

use diesel::prelude::*;
use crate::{AppState, models::User};
use crate::schema::users::dsl::*;
use crate::{models::{NewUser,UpdateUser}};

use crate::schema::{roles, user_roles};
use crate::auth::middleware::AuthContext;
use crate::models::audit::write_audit;
use crate::admin::views::{UserRow, AdminUsersTemplate};

use askama::Template;

#[derive(Deserialize)]
pub struct AssignRoleReq {
    pub user_id: Uuid,
    pub role_key: String,
}

pub async fn assign_role(
    State(state): State<AppState>,
    Extension(ctx): Extension<AuthContext>,
    Json(req): Json<AssignRoleReq>,
) -> Result<StatusCode, StatusCode> {
    if !ctx.has_perm("roles.assign") {
        return Err(StatusCode::FORBIDDEN);
    }

    let mut conn = state.pool.get().map_err(|_| StatusCode::SERVICE_UNAVAILABLE)?;

    // найти роль
    let role_id: Uuid = roles::table
        .filter(roles::key.eq(&req.role_key))
        .select(roles::id)
        .first(&mut conn)
        .map_err(|_| StatusCode::BAD_REQUEST)?;

    // вставить связь (idempotent)
    diesel::insert_into(user_roles::table)
        .values((
            user_roles::user_id.eq(req.user_id),
            user_roles::role_id.eq(role_id),
            user_roles::assigned_by.eq(Some(ctx.user_id)),
        ))
        .on_conflict_do_nothing()
        .execute(&mut conn)
        .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

        write_audit(
            &mut conn,
            Some(ctx.user_id),
            "role.assign",
            "user",
            req.user_id,
            Some(serde_json::json!({ "role_key": req.role_key })),
        ).map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    Ok(StatusCode::NO_CONTENT)
}

#[derive(Deserialize)]
pub struct AdminLoginForm {
    pub username: String,
    pub password: String,
}

pub async fn admin_index(cookies: Cookies) -> impl IntoResponse {
    let ok = cookies.get("admin_session").map(|c| c.value() == "ok").unwrap_or(false);
    if ok {
        Redirect::to("/admin/users")
    } else {
        Redirect::to("/admin/login")
    }
}

pub async fn admin_login_submit(
    cookies: Cookies,
    Form(form): Form<AdminLoginForm>,
) -> Result<impl IntoResponse, StatusCode> {
    // Минимально: креды из env
    let admin_user = std::env::var("ADMIN_USERNAME").unwrap_or_else(|_| "admin".to_string());
    let admin_pass = std::env::var("ADMIN_PASSWORD").unwrap_or_else(|_| "admin".to_string());

    if form.username == admin_user && form.password == admin_pass {
        let mut c = Cookie::new("admin_session", "ok");
        c.set_http_only(true);
        c.set_path("/");
        cookies.add(c);
        Ok(Redirect::to("/admin/users").into_response())
    } else {
        Ok((StatusCode::UNAUTHORIZED, Html("Invalid credentials")).into_response())
    }
}

pub async fn admin_logout(cookies: Cookies) -> impl IntoResponse {
    let mut c = Cookie::new("admin_session", "");
    c.set_path("/");
    cookies.remove(c);
    Redirect::to("/admin/login")
}

pub async fn get_user(
    Path(user_id): Path<Uuid>,
    State(state): State<AppState>,
) -> Json<User> {
    let mut conn = state.pool.get().unwrap();

    let user = users
        .find(user_id)
        .first::<User>(&mut conn)
        .expect("User not found");

    Json(user)
}

pub async fn create_user(
    State(state): State<AppState>,
    Json(new_user): Json<NewUser>,
) -> Json<User> {
    let mut conn = state.pool.get().unwrap();

    let user = diesel::insert_into(users)
        .values(&new_user)
        .get_result::<User>(&mut conn)
        .expect("Failed to insert user");

    Json(user)
}

pub async fn update_user(
    Path(user_id): Path<Uuid>,
    State(state): State<AppState>,
    Json(update): Json<UpdateUser>,
) -> Json<User> {
    let mut conn = state.pool.get().unwrap();

    let updated_user = diesel::update(users.find(user_id))
        .set(&update)
        .get_result::<User>(&mut conn)
        .expect("Failed to update user");

    Json(updated_user)
}

// DELETE /users/:id
pub async fn delete_user(
    Path(user_id): Path<Uuid>,
    State(state): State<AppState>,
) -> Json<&'static str> {
    let mut conn = state.pool.get().unwrap();

    diesel::delete(users.find(user_id))
        .execute(&mut conn)
        .expect("Failed to delete user");

    Json("User deleted")
}

pub async fn admin_users_page(
    State(state): State<AppState>,
) -> Result<Html<String>, StatusCode> {
    let mut conn = state.pool.get().map_err(|_| StatusCode::SERVICE_UNAVAILABLE)?;

    let list = users
        .select(User::as_select())
        .load::<User>(&mut conn)
        .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    // Простая HTML-таблица
    let rows = list.into_iter().map(|u| UserRow {
        id: u.id,
        auth0_id: u.auth0_id,
        email: u.email.unwrap_or_default(),
        created_at: u.created_at.map(|d| d.to_string()).unwrap_or_default(),
    }).collect();

    let tpl = AdminUsersTemplate {
        users: rows,
        q: "".to_string(), // позже сюда подставим search query
    };

    Ok(Html(tpl.render().map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?))
}

// минимальный экранировщик
fn html_escape(s: &str) -> String {
    s.replace('&', "&amp;")
     .replace('<', "&lt;")
     .replace('>', "&gt;")
     .replace('"', "&quot;")
     .replace('\'', "&#39;")
}

pub async fn admin_roles_page() -> Html<&'static str> {
    Html("Roles page")
}

pub async fn admin_audit_page() -> Html<&'static str> {
    Html("Audit page")
}