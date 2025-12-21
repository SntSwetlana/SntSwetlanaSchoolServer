use serde::{Deserialize, Serialize};
use diesel::prelude::*;
use crate::schema::users;
use uuid::Uuid;



#[derive(Queryable, Selectable, Debug, Serialize)]
#[diesel(table_name = users)]
pub struct User {
    pub id: Uuid,
    pub auth0_id: String,
    pub email: Option<String>,
    pub created_at: Option<chrono::NaiveDateTime>,
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