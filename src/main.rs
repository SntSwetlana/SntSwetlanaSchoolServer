mod auth;
mod api;
mod db;
mod models;
mod routes;
mod schema;

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

    let subjects_read = Router::new()
    .route("/subjects", get(crate::api::subjects::routes::list_subjects))
    .route("/subjects/{id}", get(crate::api::subjects::routes::get_subject));

    let subjects_write = Router::new()
    .route("/subjects", post(crate::api::subjects::routes::create_subject))
    .route("/subjects/{id}",
        axum::routing::put(crate::api::subjects::routes::update_subject)
            .delete(crate::api::subjects::routes::delete_subject)
    )
    .layer(axum::middleware::from_fn(auth::middleware::require_admin)); // или require_editor

    let library_routes = Router::new()
        .route("/library/publishers", get(crate::api::library::routes::list_publishers_tree));
    let quizlet_card_routes = Router::new()
        .route(
            "/quizlet/sets/{set_id}/cards",
            get(crate::api::quizlet::cards::list_cards)
                .post(crate::api::quizlet::cards::create_card),
        )
        .route(
            "/quizlet/sets/{set_id}/cards/{card_id}",   
            get(crate::api::quizlet::cards::get_card)
                .put(crate::api::quizlet::cards::update_card)
                .delete(crate::api::quizlet::cards::delete_card),
    );

    let quizlet_set_routes = Router::new()
        .route("/quizlet/sets", get(crate::api::quizlet::full::list_sets_grouped))
        .route("/quizlet/sets/{set_id}", axum::routing::put(crate::api::quizlet::sets::upsert_set))
        .route("/quizlet/sets/{set_id}/cards:replace", axum::routing::put(crate::api::quizlet::cards_replace::replace_cards))
        .route("/quizlet/sets/{set_id}/full", get(crate::api::quizlet::full::get_set_full));

    let quizlet_folder_routes = Router::new()
        .route(
            "/quizlet/folders",
            get(crate::api::quizlet::folders::list_folders)
                .post(crate::api::quizlet::folders::create_folder),
        )
        .route(
            "/quizlet/folders/{folder_id}",
            get(crate::api::quizlet::folders::get_folder)
                .put(crate::api::quizlet::folders::rename_folder)
                .delete(crate::api::quizlet::folders::delete_folder),
        )
        .route(
            "/quizlet/folders/{folder_id}/sets",
            get(crate::api::quizlet::folders::list_folder_sets),
        )
        .route(
            "/quizlet/folders/{folder_id}/sets:replace",
            axum::routing::put(crate::api::quizlet::folders::replace_folder_sets),
        );
    let api_protected = Router::new()
        .merge(quizlet_card_routes)
        .merge(quizlet_set_routes)
        .merge(subjects_read)
        .merge(subjects_write)
        .merge(library_routes)
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
