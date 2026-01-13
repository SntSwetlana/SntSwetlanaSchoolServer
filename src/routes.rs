use axum::{extract::{Extension,State}, Json};
use diesel::prelude::*;
use crate::auth::middleware::AuthenticatedUser;

use crate::{models::{User}, 
    schema::users::dsl::*};
use serde::Serialize;
use crate::AppState;
use crate::api::admin::users::*;
#[derive(Serialize)]
pub struct UsersResponse {
    pub users: Vec<User>,
}
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
pub async fn get_users(State(state): State<AppState>) -> Json<UsersResponse> {
    let mut conn = state.pool.get().unwrap();

    let result = users
        .load::<User>(&mut conn)
        .expect("Failed to load users");

    Json(UsersResponse { users: result })
}

