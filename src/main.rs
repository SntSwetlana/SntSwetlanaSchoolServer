mod auth;
mod db;
mod models;
mod routes;
mod schema;

use axum::{routing::{get, patch, delete}, Router};
use axum::middleware::from_fn_with_state;
use auth::jwks::JwksCache;
use std::net::SocketAddr;
use db::init_pool;
use dotenvy::dotenv;
use std::env;

use crate::auth::middleware::auth_middleware;


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

    // корректное приложение
    let app = Router::new()
        .nest("/api", protected)
        .route("/", get(|| async { "API is working" }))
        .route("/users", get(routes::get_users))
        .route("/users/{id}", get(routes::get_user))
//        .route("/users", post(routes::create_user))
        .route("/users/{id}", patch(routes::update_user))
        .route("/users/{id}", delete(routes::delete_user))
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
