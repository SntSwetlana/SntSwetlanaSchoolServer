mod auth;
mod db;
mod models;
mod routes;
mod schema;
mod admin;
mod teacher;
mod editor;

use axum::{routing::{get, patch, put, delete, post}, Router};
use auth::jwks::JwksCache;
use std::net::SocketAddr;
use db::init_pool;
use dotenvy::dotenv;
use std::env;
use tower_http::cors::{CorsLayer, Any};
use axum::http::Method;

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


    let public_api: Router<AppState> = Router::new()
        .route("/auth/login", post(auth::routes::login))
        .route("/auth/logout", post(auth::routes::logout))
        .route("/auth/me", get(auth::routes::session_me))
        .with_state(state.clone());
    let protected_api = Router::new() 
        .route("/me", get(routes::me_handler)) 
        .route("/users", get(routes::get_users)) 
        .layer(axum::middleware::from_fn_with_state( state.clone(), auth::middleware::auth_middleware, )); 
    // Важно: login страницы должны быть ДО защиты, либо разделите на два роутера:

    let admin_api = Router::new()
        .route("/users", get(admin::api::list_users))
        .route("/users", post(admin::api::create_user))
        .route("/users/{id}", put(admin::api::update_user))
        .route("/users/{id}", delete(admin::api::delete_user))
        .layer(axum::middleware::from_fn(admin::middleware::admin_middleware))
        .with_state(state.clone());

    let admin_public = Router::new()
        .route("/", get(admin::routes::admin_index))
        .route("/login", get(admin::routes::admin_login_page))
        .route("/login", post(admin::routes::admin_login_submit))
        .with_state(state.clone());

    let admin_protected = Router::new()
        .route("/users", get(admin::routes::admin_users_page))
        .route("/roles", post(admin::routes::admin_roles_page))
        .route("/audit", get(admin::routes::admin_audit_page))
        .route("/logout", post(admin::routes::admin_logout))
        .layer(axum::middleware::from_fn(admin::middleware::admin_middleware)) // cookie-check + redirect
        .with_state(state.clone());
    let admin_router: Router<AppState> = admin_public.merge(admin_protected);

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

    let cors = CorsLayer::new()
    .allow_origin(["http://localhost:5173".parse().unwrap()])
    .allow_credentials(true)
    .allow_methods([Method::GET, Method::POST,Method::PATCH, Method::DELETE, Method::OPTIONS])
    .allow_headers([
        axum::http::header::CONTENT_TYPE,
        axum::http::header::AUTHORIZATION,
    ])
    .allow_credentials(true);

    let app: Router<()> = Router::new()
        .nest("/api", public_api.merge(protected_api).nest("/admin", admin_api))
        .nest("/admin", admin_router)
        .nest("/teacher", teacher)
        .nest("/editor", editor)
        .route("/", get(|| async { "API is working" }))
        .layer(cors)
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
