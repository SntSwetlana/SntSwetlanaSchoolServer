mod auth;
mod api;
mod db;
mod models;
mod routes;
mod schema;
mod teacher;
mod editor;

use axum::{routing::{get, post}, Router};
use std::net::SocketAddr;
use db::init_pool;
use dotenvy::dotenv;
use std::env;

use diesel::r2d2::{self, ConnectionManager};
use diesel::PgConnection;

pub type DbPool = r2d2::Pool<ConnectionManager<PgConnection>>;
use tower_cookies::CookieManagerLayer;

#[derive(Clone)]
pub struct AppState {
    pub pool: DbPool,
    pub session_secret: String,
}
   
#[tokio::main]
async fn main() {
    dotenv().ok();

    let database_url = env::var("DATABASE_URL").expect("DATABASE_URL is required");
    let pool = init_pool(&database_url);

    let session_secret = env::var("SESSION_SECRET").expect("SESSION_SECRET is required");

    let state = AppState { pool, session_secret };

    // public: только login/logout (и, при необходимости, register/reset-password)
    let api_public = Router::new()
        .route("/auth/login", post(auth::routes::login))
        .route("/auth/logout", post(auth::routes::logout))
        .with_state(state.clone());

    // protected: всё бизнесовое
    let admin_routes = Router::new()
    .route(
        "/users",
        get(crate::api::admin::users::list_users)
            .post(crate::api::admin::users::create_user),
    )
    .route(
        "/users/{id}",
        axum::routing::put(crate::api::admin::users::update_user)
            .delete(crate::api::admin::users::delete_user),
    )
    .layer(axum::middleware::from_fn(auth::middleware::require_admin));

    let api_protected = Router::new()
        .nest("/admin", admin_routes)
        .route("/me", get(routes::me_handler))
//        .route("/users", get(routes::get_users))
        .route("/auth/me", get(auth::routes::session_me))
        .layer(axum::middleware::from_fn_with_state(
            state.clone(),
            auth::middleware::session_middleware,
        ))
        .with_state(state.clone());
    // общий app
    let app = Router::new()
        .nest("/api", api_public.merge(api_protected))
        .layer(CookieManagerLayer::new());

    let addr = SocketAddr::from(([127, 0, 0, 1], 3000));
    println!("🚀 Server running on http://{addr}");

    let listener = tokio::net::TcpListener::bind(addr)
        .await
        .expect("Failed to bind address");

    axum::serve(listener, app.into_make_service())
    .await
    .unwrap();
}
