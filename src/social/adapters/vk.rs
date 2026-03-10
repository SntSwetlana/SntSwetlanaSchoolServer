use anyhow::{anyhow, Result};
use async_trait::async_trait;
use reqwest::Client;
use serde_json::Value;
use std::env;

use crate::models::social::SocialAccount;
use crate::social::adapters::{PublishPayload, PublishResult, SocialPublisher};

#[derive(Clone)]
pub struct VkPublisher {
    client: Client,
}

impl VkPublisher {
    pub fn new() -> Self {
        Self {
            client: Client::new(),
        }
    }
}

#[async_trait]
impl SocialPublisher for VkPublisher {
    async fn publish(
        &self,
        account: &SocialAccount,
        payload: PublishPayload,
    ) -> Result<PublishResult> {
        let access_token = account
            .access_token
            .as_ref()
            .ok_or_else(|| anyhow!("vk access_token is missing"))?;

        let group_id_str = account
            .external_account_id
            .as_ref()
            .ok_or_else(|| anyhow!("vk external_account_id/group_id is missing"))?;

        let group_id: i64 = group_id_str.parse()?;
        let owner_id = -group_id; // для сообщества owner_id должен быть отрицательным

        let api_version = env::var("VK_API_VERSION").unwrap_or_else(|_| "5.199".to_string());

        if payload.image_url.is_some() {
            return Err(anyhow!("VK image posting is not implemented yet"));
        }

        let response = self
            .client
            .post("https://api.vk.com/method/wall.post")
            .form(&[
                ("owner_id", owner_id.to_string()),
                ("from_group", "1".to_string()),
                ("message", payload.text),
                ("access_token", access_token.to_string()),
                ("v", api_version),
            ])
            .send()
            .await?;

        let status = response.status();
        let body = response.text().await?;

        if !status.is_success() {
            return Err(anyhow!("vk HTTP error {status}: {body}"));
        }

        let json: Value = serde_json::from_str(&body)?;

        if let Some(err) = json.get("error") {
            return Err(anyhow!("vk API error: {err}"));
        }

        let post_id = json
            .get("response")
            .and_then(|r| r.get("post_id"))
            .and_then(|v| v.as_i64())
            .map(|v| v.to_string())
            .ok_or_else(|| anyhow!("vk returned no post_id: {json}"))?;

        Ok(PublishResult {
            external_post_id: Some(post_id),
            raw_response: Some(json.to_string()),
        })
    }
}