use axum::{extract::State, Json};
use diesel::prelude::*;

use crate::{db::DbPool, models::{User, NewUser}, schema::users};

pub async fn get_users(State(pool): State<DbPool>) -> Json<Vec<User>> {
    let conn = &mut pool.get().unwrap();

    let result = users::table.load::<User>(conn).unwrap();

    Json(result)
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
