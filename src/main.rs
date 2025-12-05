mod db;
mod models;
mod routes;
mod schema;

use axum::{routing::{get, post}, Router};
use std::net::SocketAddr;
use db::init_pool;
use dotenvy::dotenv;
use std::env;

#[tokio::main]
async fn main() {
    dotenv().ok();

    let database_url = env::var("DATABASE_URL").expect("DATABASE_URL is required");
    let pool = init_pool(&database_url);

    // корректное приложение
    let app = Router::new()
        .route("/", get(|| async { "Hello Axum!" }))
        .route("/users", get(routes::get_users))
        .route("/users", post(routes::create_user))
        .with_state(pool);

    let addr = SocketAddr::from(([127, 0, 0, 1], 3000));
    println!("🚀 Server running on http://{addr}");

    let listener = tokio::net::TcpListener::bind(addr)
        .await
        .expect("Failed to bind address");

    axum::serve(listener, app)
        .await
        .unwrap();
}
