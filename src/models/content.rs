use diesel::prelude::*;
use serde::{Deserialize, Serialize};
use uuid::Uuid;

use crate::schema::{content_items, content_versions};

#[derive(Debug, Insertable, Deserialize)]
#[diesel(table_name = content_items)]
pub struct NewContentItem {
    pub kind: String,
    pub status: String,
    pub grade_level: i32,
    pub title: String,
    pub created_by: Uuid,
}

#[derive(Debug, Queryable, Selectable, Serialize)]
#[diesel(table_name = content_versions)]
#[diesel(check_for_backend(diesel::pg::Pg))]
pub struct ContentVersion {
    pub id: Uuid,
    pub content_id: Uuid,
    pub version: i32,
    pub body: serde_json::Value,
    pub change_summary: Option<String>,
    pub created_by: Uuid,
    pub created_at: chrono::NaiveDateTime,
}

#[derive(Debug, Insertable, Deserialize)]
#[diesel(table_name = content_versions)]
pub struct NewContentVersion {
    pub content_id: Uuid,
    pub version: i32,
    pub body: serde_json::Value,
    pub change_summary: Option<String>,
    pub created_by: Uuid,
}