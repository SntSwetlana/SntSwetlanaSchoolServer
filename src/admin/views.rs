use askama::Template;
use crate::models::User;
use uuid::Uuid;

#[derive(Clone,Debug)]
pub struct UserRow {
    pub id: Uuid,
    pub auth0_id: String,
    pub email: String,
    pub created_at: String,
}

#[derive(Template)]
#[template(path = "admin_login.html")]
pub struct AdminLoginTemplate {
    pub error: String,
}

#[derive(Template)]
#[template(path = "admin_users.html")]
pub struct AdminUsersTemplate {
    pub users: Vec<UserRow>,
    pub q: String,
}