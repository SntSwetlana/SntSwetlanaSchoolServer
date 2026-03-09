use anyhow::{anyhow, Result};
use async_trait::async_trait;
use reqwest::Client;
use serde_json::{json, Value};

use crate::models::news::NewsPost;
use crate::models::social::SocialAccount;
use crate::social::adapters::{PublishPayload, PublishResult, SocialPublisher};

#[derive(Clone)]
pub struct TelegramPublisher {
    client: Client,
}

impl TelegramPublisher {
    pub fn new() -> Self {
        Self {
            client: Client::new(),
        }
    }
}

#[async_trait]
impl SocialPublisher for TelegramPublisher {
    async fn publish(
        &self,
        account: &SocialAccount,
        payload: PublishPayload,
    ) -> Result<PublishResult> {
        let bot_token = account
            .access_token
            .as_ref()
            .ok_or_else(|| anyhow!("telegram access_token is missing"))?;

        let chat_id = account
            .external_account_id
            .as_ref()
            .ok_or_else(|| anyhow!("telegram external_account_id/chat_id is missing"))?;

        if let Some(image_url) = payload.image_url {
            let url = format!("https://api.telegram.org/bot{bot_token}/sendPhoto");

            let resp: Value = self
                .client
                .post(url)
                .json(&json!({
                    "chat_id": chat_id,
                    "photo": image_url,
                    "caption": payload.text,
                    "parse_mode": "HTML"
                }))
                .send()
                .await?
                .json()
                .await?;

            let ok = resp.get("ok").and_then(|v| v.as_bool()).unwrap_or(false);
            if !ok {
                return Err(anyhow!("telegram sendPhoto failed: {}", resp));
            }

            let message_id = resp
                .get("result")
                .and_then(|r| r.get("message_id"))
                .and_then(|v| v.as_i64())
                .map(|v| v.to_string());

            Ok(PublishResult {
                external_post_id: message_id,
                raw_response: Some(resp.to_string()),
            })
        } else {
            let url = format!("https://api.telegram.org/bot{bot_token}/sendMessage");

            let resp: Value = self
                .client
                .post(url)
                .json(&json!({
                    "chat_id": chat_id,
                    "text": payload.text,
                    "parse_mode": "HTML",
                    "disable_web_page_preview": false
                }))
                .send()
                .await?
                .json()
                .await?;

            let ok = resp.get("ok").and_then(|v| v.as_bool()).unwrap_or(false);
            if !ok {
                return Err(anyhow!("telegram sendMessage failed: {}", resp));
            }

            let message_id = resp
                .get("result")
                .and_then(|r| r.get("message_id"))
                .and_then(|v| v.as_i64())
                .map(|v| v.to_string());

            Ok(PublishResult {
                external_post_id: message_id,
                raw_response: Some(resp.to_string()),
            })
        }
    }
}