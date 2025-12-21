mod auth;
mod db;
mod models;
mod routes;
mod schema;
mod admin;

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

    let protected = Router::new()
        .route("/me", get(routes::me_handler))
        .layer(axum::middleware::from_fn_with_state(
            state.clone(),
            auth::middleware::auth_middleware,
        ));

let admin_public = Router::new()
    .route("/", get(admin::routes::admin_index))
    .route("/login", get(admin::routes::admin_login_page))
    .route("/login", post(admin::routes::admin_login_submit));

let admin_protected = Router::new()
    .route("/users", get(admin::routes::admin_users_page))
    .route("/logout", post(admin::routes::admin_logout))
    .route("/users/{id}", get(admin::routes::get_user))
    .route("/user", post(admin::routes::create_user))
    .route("/users/{id}", patch(admin::routes::update_user))
    .route("/users/{id}", delete(admin::routes::delete_user))
    .layer(axum::middleware::from_fn(admin::middleware::admin_middleware));

let app = Router::new()
    .nest("/admin", admin_public.merge(admin_protected))
    .nest("/api", protected)
    .route("/", get(|| async { "API is working" }))
    .route("/users", get(routes::get_users))
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
