use diesel::prelude::*;
use serde::{Deserialize, Serialize};
use uuid::Uuid;

use crate::schema::{roles, permissions, user_roles, role_permissions, audit_log, content_items, content_versions};

#[derive(Debug, Queryable, Selectable, Serialize)]
#[diesel(table_name = roles)]
#[diesel(check_for_backend(diesel::pg::Pg))]
pub struct Role {
    pub id: Uuid,
    pub key: String,
    pub name: String,
}

#[derive(Debug, Queryable, Selectable, Serialize)]
#[diesel(table_name = permissions)]
#[diesel(check_for_backend(diesel::pg::Pg))]
pub struct Permission {
    pub id: Uuid,
    pub key: String,
}

#[derive(Debug, Insertable, Deserialize)]
#[diesel(table_name = user_roles)]
pub struct NewUserRole {
    pub user_id: Uuid,
    pub role_id: Uuid,
    pub assigned_by: Option<Uuid>,
}

#[derive(Debug, Queryable, Selectable, Serialize)]
#[diesel(table_name = audit_log)]
#[diesel(check_for_backend(diesel::pg::Pg))]
pub struct AuditEvent {
    pub id: Uuid,
    pub actor_id: Option<Uuid>,
    pub action: String,
    pub entity_type: String,
    pub entity_id: Uuid,
    pub metadata: Option<serde_json::Value>,
    pub created_at: chrono::NaiveDateTime,
}

#[derive(Debug, Queryable, Selectable, Serialize)]
#[diesel(table_name = content_items)]
#[diesel(check_for_backend(diesel::pg::Pg))]
pub struct ContentItem {
    pub id: Uuid,
    pub kind: String,
    pub status: String,
    pub grade_level: i32,
    pub title: String,
    pub created_by: Uuid,
    pub created_at: chrono::NaiveDateTime,
    pub updated_at: chrono::NaiveDateTime,
    pub published_at: Option<chrono::NaiveDateTime>,
    pub is_liquid: bool,
    pub blocked_reason: Option<String>,
}

