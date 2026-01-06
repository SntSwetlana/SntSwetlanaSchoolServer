mod auth;
mod db;
mod models;
mod routes;
mod schema;
mod admin;
mod teacher;
mod editor;

use axum::{routing::{get, patch, delete, post}, Router};
use auth::jwks::JwksCache;
use std::net::SocketAddr;
use db::init_pool;
use dotenvy::dotenv;
use std::env;

#[derive(Clone)]
pub struct AppState {
    pub pool: db::DbPool,
    pub jwks: auth::jwks::JwksCache,
}

#[tokio::main]
async fn main() {
    dotenv().ok();

    let database_url = env::var("DATABASE_URL").expect("DATABASE_URL is required");
    let pool = init_pool(&database_url);
    let jwks = JwksCache::new();
    let state = AppState { pool, jwks };

    let protected: Router<AppState> = Router::new()
        .route("/me", get(routes::me_handler))
        .layer(axum::middleware::from_fn_with_state(
            state.clone(),
            auth::middleware::auth_middleware,
        ));

let protected_api = Router::new()
    .route("/me", get(routes::me_handler))
    .route("/users", get(routes::get_users))
    .layer(axum::middleware::from_fn_with_state(
        state.clone(),
        auth::middleware::auth_middleware,
    ));

let admin = Router::new()
    .route("/", get(admin::routes::admin_index))
    .route("/users", get(admin::routes::admin_users_page))
    .route("/roles", get(admin::routes::admin_roles_page))
    .route("/audit", get(admin::routes::admin_audit_page))
    .layer(axum::middleware::from_fn_with_state(
        state.clone(),
        auth::middleware::auth_middleware,
    ))
    .layer(axum::middleware::from_fn(auth::middleware::require_admin)); // новый middleware

let teacher = Router::new()
    .route("/", get(teacher::routes::teacher_index))
    .route("/students", get(teacher::routes::students_page))
    .layer(axum::middleware::from_fn_with_state(
        state.clone(),
        auth::middleware::auth_middleware,
    ))
    .layer(axum::middleware::from_fn(auth::middleware::require_teacher));

let editor = Router::new()
    .route("/", get(editor::routes::editor_index))
    .route("/content", get(editor::routes::content_page))
    .layer(axum::middleware::from_fn_with_state(
        state.clone(),
        auth::middleware::auth_middleware,
    ))
    .layer(axum::middleware::from_fn(auth::middleware::require_editor));

let app = Router::new()
    .nest("/api", protected_api)
    .nest("/admin", admin)
    .nest("/teacher", teacher)
    .nest("/editor", editor)
    .route("/", get(|| async { "API is working" }))
    .layer(tower_cookies::CookieManagerLayer::new())
    .with_state(state);

    let addr = SocketAddr::from(([127, 0, 0, 1], 3000));
    println!("🚀 Server running on http://{addr}");

    let listener = tokio::net::TcpListener::bind(addr)
        .await
        .expect("Failed to bind address");

    axum::serve(listener, app)
        .await
        .unwrap();
}
