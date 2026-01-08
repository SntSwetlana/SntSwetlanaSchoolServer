use serde::{Deserialize, Serialize};
use diesel::prelude::*;
use crate::schema::{local_credentials, users};
use uuid::Uuid;



#[derive(Queryable, Selectable, Debug, Serialize)]
#[diesel(table_name = users)]
pub struct User {
    pub id: uuid::Uuid,
    pub auth0_id: String,
    pub email: Option<String>,
    pub created_at: Option<chrono::NaiveDateTime>,
    pub username: Option<String>,
    pub full_name: Option<String>,
    pub gender: Option<String>,
}

#[derive(Debug, Deserialize)]
pub struct AdminCreateUserReq {
    pub username: String,
    pub email: String,
    pub password: String,
    pub full_name: String,
    pub role: String,
    pub gender: String,
}

#[derive(Insertable, Debug)]
#[diesel(table_name = users)]
pub struct NewUserDb {
    pub auth0_id: String,
    pub username: Option<String>,
    pub full_name: Option<String>,
    pub gender: Option<String>,
    pub email: Option<String>,
}

#[derive(Insertable, Debug)]
#[diesel(table_name = local_credentials)]
pub struct NewLocalCredentialDb {
    pub user_id: Uuid,
    pub password_hash: String,
}
#[derive(Insertable, Debug, Deserialize)]
#[diesel(table_name = users)]
pub struct NewUser {
    pub auth0_id: String,
    pub email: Option<String>,
}

#[derive(Deserialize, AsChangeset)]
#[diesel(table_name = users)]
pub struct UpdateUser {
      pub email: Option<String>,
}