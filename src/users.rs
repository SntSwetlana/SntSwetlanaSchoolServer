use axum::{extract::{State, Path}, Json};
use diesel::prelude::*;
use crate::{
    db::DbPool,
    models::User,
    schema::users,
    middleware::AuthUser,
};

pub async fn get_users(
    State(pool): State<DbPool>,
    AuthUser(_id): AuthUser, // Only authenticated users
) -> Json<Vec<User>> {
    let conn = &mut pool.get().unwrap();
    Json(users::table.load(conn).unwrap())
}

pub async fn get_user(
    State(pool): State<DbPool>,
    Path(id): Path<i32>,
    AuthUser(_id): AuthUser,
) -> Json<User> {
    let conn = &mut pool.get().unwrap();
    Json(users::table.find(id).first(conn).unwrap())
}
