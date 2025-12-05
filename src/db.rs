use diesel::r2d2::{self, ConnectionManager};
use diesel::PgConnection;
use diesel_migrations::{MigrationHarness, EmbeddedMigrations};
use diesel_migrations::embed_migrations;

pub const MIGRATIONS: EmbeddedMigrations = embed_migrations!();

pub type DbPool = r2d2::Pool<ConnectionManager<PgConnection>>;

pub fn init_pool(database_url: &str) -> DbPool {
    let manager = ConnectionManager::<PgConnection>::new(database_url);
    let pool = r2d2::Pool::builder()
        .build(manager)
        .expect("Failed to create pool.");

    // Прогоняем миграции при старте сервера
    let mut conn = pool.get().expect("Failed to get DB connection for migrations");
    conn.run_pending_migrations(MIGRATIONS)
        .expect("Migrations failed");

    pool
}
