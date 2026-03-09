use std::env;

use anyhow::Result;
use chrono::Utc;
use serde_json::json;

use crate::models::social::SocialAccount;

pub fn threads_account_from_env() -> Result<SocialAccount> {
    let access_token = env::var("THREADS_ACCESS_TOKEN")?;
    let user_id = env::var("THREADS_USER_ID")?;

    Ok(SocialAccount {
        id: 0,
        provider: "threads".to_string(),
        account_name: "Threads".to_string(),
        external_account_id: Some(user_id),
        access_token: Some(access_token),
        refresh_token: None,
        token_expires_at: None,
        settings_json: json!({}),
        is_active: true,
        created_at: Utc::now(),
        updated_at: Utc::now(),
    })
}