use axum::{extract::{Extension,State,Path}, Json};
use diesel::prelude::*;
use uuid::Uuid;
use crate::auth::middleware::AuthenticatedUser;

use crate::{db::DbPool, 
    models::{User, NewUser,UpdateUser}, 
    schema::users::dsl::*};
use serde::Serialize;
use crate::AppState;

#[derive(Serialize)]
pub struct MeResponse {
    pub id: String,
    pub auth0_id: String,
    pub email: Option<String>,
}

pub async fn me_handler(Extension(user): Extension<AuthenticatedUser>) -> Json<MeResponse> {
    Json(MeResponse {
        id: user.id.to_string(),
        auth0_id: user.auth0_id,
        email: user.email,
    })
}
pub async fn get_users(State(state): State<AppState>) -> Json<Vec<User>> {
    let mut conn = state.pool.get().unwrap();

    let result = users
        .load::<User>(&mut conn)
        .expect("Failed to load users");

    Json(result)
}

pub async fn get_user(
    Path(user_id): Path<Uuid>,
    State(state): State<AppState>,
) -> Json<User> {
    let mut conn = state.pool.get().unwrap();

    let user = users
        .find(user_id)
        .first::<User>(&mut conn)
        .expect("User not found");

    Json(user)
}

pub async fn create_user(
    State(state): State<AppState>,
    Json(new_user): Json<NewUser>,
) -> Json<User> {
    let mut conn = state.pool.get().unwrap();

    let user = diesel::insert_into(users)
        .values(&new_user)
        .get_result::<User>(&mut conn)
        .expect("Failed to insert user");

    Json(user)
}

pub async fn update_user(
    Path(user_id): Path<Uuid>,
    State(state): State<AppState>,
    Json(update): Json<UpdateUser>,
) -> Json<User> {
    let mut conn = state.pool.get().unwrap();

    let updated_user = diesel::update(users.find(user_id))
        .set(&update)
        .get_result::<User>(&mut conn)
        .expect("Failed to update user");

    Json(updated_user)
}

// DELETE /users/:id
pub async fn delete_user(
    Path(user_id): Path<Uuid>,
    State(state): State<AppState>,
) -> Json<&'static str> {
    let mut conn = state.pool.get().unwrap();

    diesel::delete(users.find(user_id))
        .execute(&mut conn)
        .expect("Failed to delete user");

    Json("User deleted")
}