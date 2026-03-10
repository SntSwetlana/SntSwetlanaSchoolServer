mod auth;
mod api;
mod db;
mod models;
mod routes;
mod social;
mod schema;
mod social_jobs;
use crate::db::init_pool;

use axum::{routing::{get, post}, Router};
use std::net::SocketAddr;
use dotenvy::dotenv;
use std::env;

use diesel::r2d2::{self, ConnectionManager};
use diesel::PgConnection;

pub type DbPool = r2d2::Pool<ConnectionManager<PgConnection>>;
use tower_cookies::CookieManagerLayer;
use tower_http::services::ServeDir;

use crate::social::worker::SocialWorker;

use crate::models::social::SocialAccount;

use crate::social::telegram_config::telegram_account_from_env;
use crate::social::scheduler::telegram_hourly::spawn_hourly_telegram_greeting;

use crate::social::threads_config::threads_account_from_env;
use crate::social::scheduler::threads_hourly::spawn_hourly_threads_greeting;

use crate::social::instagram_config::instagram_account_from_env;
use crate::social::scheduler::instagram_hourly::spawn_hourly_instagram_greeting;

use crate::social::vk_config::vk_account_from_env;
use crate::social::scheduler::vk_hourly::spawn_hourly_vk_greeting;

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

    let worker = SocialWorker::new(pool.clone());
    tokio::spawn(async move {
        worker.run_forever().await;
    });

    let session_secret = env::var("SESSION_SECRET").expect("SESSION_SECRET is required");

    let state = AppState { pool, session_secret };

    // public: только login/logout (и, при необходимости, register/reset-password)
    let api_public = Router::new()
        .route("/auth/login", post(auth::routes::login))
        .route("/auth/logout", post(auth::routes::logout))
            .route("/news", get(crate::api::news::list_news))   // ✅ сюда
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
        .route(
        "/test-instagram",
        post(crate::api::admin::social_test::test_instagram_post),
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
            get(crate::api::quizlet::folders::list_folder_sets)
            .post(crate::api::quizlet::folders::add_sets_to_folder),
        )
        .route(
            "/quizlet/folders/{folder_id}/sets:replace",
            axum::routing::put(crate::api::quizlet::folders::replace_folder_sets),
        )
        .route(
            "/quizlet/folders/{folder_id}/sets/{set_id}",
            axum::routing::delete(crate::api::quizlet::folders::remove_set_from_folder),
        );
    let api_protected = Router::new()
        .merge(quizlet_folder_routes)
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
        .nest_service("/images", ServeDir::new("images"))
        .layer(CookieManagerLayer::new());

    let addr = SocketAddr::from(([127, 0, 0, 1], 3000));
    println!("🚀 Server running on http://{addr}");

    println!("cwd = {:?}", std::env::current_dir().unwrap());
    println!("exists images = {}", std::path::Path::new("images").exists());
    println!("exists server/images = {}", std::path::Path::new("server/images").exists());
    println!(
        "exists test file 1 = {}",
        std::path::Path::new("images/idioms/B1/give-someone-the-cold-shoulder.png").exists()
    );
    println!(
        "exists test file 2 = {}",
        std::path::Path::new("server/images/idioms/B1/give-someone-the-cold-shoulder.png").exists()
    );

    let telegram_account = telegram_account_from_env();
    spawn_hourly_telegram_greeting(telegram_account.expect("REASON"));
    let threads_account = threads_account_from_env();
    spawn_hourly_threads_greeting(threads_account.expect("REASON"));
    let instagram_account = instagram_account_from_env();
    spawn_hourly_instagram_greeting(instagram_account.expect("REASON"));
    let vk_account = vk_account_from_env();
    spawn_hourly_vk_greeting(vk_account.expect("REASON"));

    let listener = tokio::net::TcpListener::bind(addr)
        .await
        .expect("Failed to bind address");

    axum::serve(listener, app.into_make_service())
    .await
    .unwrap();
}
