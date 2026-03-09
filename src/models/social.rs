use chrono::{DateTime, Utc};
use diesel::prelude::*;
use serde::{Deserialize, Serialize};
use serde_json::Value;
use uuid::Uuid;

use crate::schema::{social_accounts, social_post_attempts, social_post_jobs};

#[derive(Debug, Clone, Queryable, Selectable, Serialize, Deserialize)]
#[diesel(table_name = social_accounts)]
pub struct SocialAccount {
    pub id: i64,
    pub provider: String,
    pub account_name: String,
    pub external_account_id: Option<String>,
    pub access_token: Option<String>,
    pub refresh_token: Option<String>,
    pub token_expires_at: Option<DateTime<Utc>>,
    pub settings_json: Value,
    pub is_active: bool,
    pub created_at: DateTime<Utc>,
    pub updated_at: DateTime<Utc>,
}

#[derive(Debug, Insertable, Serialize, Deserialize)]
#[diesel(table_name = social_accounts)]
pub struct NewSocialAccount {
    pub provider: String,
    pub account_name: String,
    pub external_account_id: Option<String>,
    pub access_token: Option<String>,
    pub refresh_token: Option<String>,
    pub token_expires_at: Option<DateTime<Utc>>,
    pub settings_json: Value,
    pub is_active: bool,
}

#[derive(Debug, Clone, Queryable, Selectable, Serialize, Deserialize)]
#[diesel(table_name = social_post_jobs)]
pub struct SocialPostJob {
    pub id: i64,
    pub news_post_id: uuid::Uuid,
    pub social_account_id: i64,
    pub status: String,
    pub scheduled_for: DateTime<Utc>,
    pub published_at: Option<DateTime<Utc>>,
    pub retry_count: i32,
    pub next_retry_at: Option<DateTime<Utc>>,
    pub external_post_id: Option<String>,
    pub error_message: Option<String>,
    pub payload_json: Value,
    pub created_at: DateTime<Utc>,
    pub updated_at: DateTime<Utc>,
}

#[derive(Debug, Insertable, Serialize, Deserialize)]
#[diesel(table_name = social_post_jobs)]
pub struct NewSocialPostJob {
    pub news_post_id: uuid::Uuid,
    pub social_account_id: i64,
    pub status: String,
    pub scheduled_for: DateTime<Utc>,
    pub published_at: Option<DateTime<Utc>>,
    pub retry_count: i32,
    pub next_retry_at: Option<DateTime<Utc>>,
    pub external_post_id: Option<String>,
    pub error_message: Option<String>,
    pub payload_json: Value,
}

#[derive(Debug, AsChangeset, Default, Serialize, Deserialize)]
#[diesel(table_name = social_post_jobs)]
pub struct UpdateSocialPostJob {
    pub status: Option<String>,
    pub published_at: Option<Option<DateTime<Utc>>>,
    pub retry_count: Option<i32>,
    pub next_retry_at: Option<Option<DateTime<Utc>>>,
    pub external_post_id: Option<Option<String>>,
    pub error_message: Option<Option<String>>,
    pub payload_json: Option<Value>,
}

#[derive(Debug, Clone, Queryable, Selectable, Serialize, Deserialize)]
#[diesel(table_name = social_post_attempts)]
pub struct SocialPostAttempt {
    pub id: Uuid,
    pub social_post_job_id: i64,
    pub attempt_no: i32,
    pub status: String,
    pub response_body: Option<String>,
    pub error_message: Option<String>,
    pub created_at: DateTime<Utc>,
}

#[derive(Debug, Insertable, Serialize, Deserialize)]
#[diesel(table_name = social_post_attempts)]
pub struct NewSocialPostAttempt {
    pub social_post_job_id: i64,
    pub attempt_no: i32,
    pub status: String,
    pub response_body: Option<String>,
    pub error_message: Option<String>,
}