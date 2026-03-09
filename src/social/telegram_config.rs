use std::env;

use anyhow::Result;
use chrono::Utc;
use serde_json::json;

use crate::models::social::SocialAccount;

pub fn telegram_account_from_env() -> Result<SocialAccount> {
    let bot_token = env::var("TELEGRAM_BOT_TOKEN")?;
    let chat_id = env::var("TELEGRAM_CHAT_ID")?;

    Ok(SocialAccount {
        id: 0, // временно, потому что не из БД
        provider: "telegram".to_string(),
        account_name: "Telegram Bot".to_string(),
        external_account_id: Some(chat_id),
        access_token: Some(bot_token),
        refresh_token: None,
        token_expires_at: None,
        settings_json: json!({}),
        is_active: true,
        created_at: Utc::now(),
        updated_at: Utc::now(),
    })
}