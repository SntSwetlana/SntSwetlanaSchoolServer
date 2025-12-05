use axum::{extract::{State,Path}, Json};
use diesel::prelude::*;

use crate::{db::DbPool, models::{User, NewUser,UpdateUser}, schema::users};

pub async fn get_users(State(pool): State<DbPool>) -> Json<Vec<User>> {
    let conn = &mut pool.get().unwrap();

    let result = users::table.load::<User>(conn).unwrap();

    Json(result)
}

pub async fn get_user(Path(id): Path<i32>, State(pool): State<DbPool>) -> Json<User> {
    let mut conn = pool.get().unwrap();
    let user = users::table.find(id).first(&mut conn).unwrap();
    Json(user)
}


pub async fn create_user(
    State(pool): State<DbPool>,
    Json(new_user): Json<NewUser>
) -> Json<User> {
    let conn = &mut pool.get().unwrap();

    diesel::insert_into(users::table)
        .values(&new_user)
        .get_result::<User>(conn)
        .unwrap()
        .into()
}

pub async fn update_user(
    Path(id): Path<i32>,
    State(pool): State<DbPool>,
    Json(update): Json<UpdateUser>
) -> Json<User> {
    let mut conn = pool.get().unwrap();

    let user = diesel::update(users::table.find(id))
        .set(update)
        .get_result::<User>(&mut conn)
        .unwrap();

    Json(user)
}

// DELETE /users/:id
pub async fn delete_user(
    Path(id): Path<i32>,
    State(pool): State<DbPool>,
) -> Json<&'static str> {
    let mut conn = pool.get().unwrap();

    diesel::delete(users::table.find(id))
        .execute(&mut conn)
        .unwrap();

    Json("User deleted")
}