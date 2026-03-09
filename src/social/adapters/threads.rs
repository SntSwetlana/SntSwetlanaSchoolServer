use anyhow::{anyhow, Result};
use async_trait::async_trait;
use reqwest::Client;
use serde_json::Value;

use crate::models::social::SocialAccount;
use crate::social::adapters::{PublishPayload, PublishResult, SocialPublisher};

#[derive(Clone)]
pub struct ThreadsPublisher {
    client: Client,
}

impl ThreadsPublisher {
    pub fn new() -> Self {
        Self {
            client: Client::new(),
        }
    }
}

#[async_trait]
impl SocialPublisher for ThreadsPublisher {
    async fn publish(
        &self,
        account: &SocialAccount,
        payload: PublishPayload,
    ) -> Result<PublishResult> {
        let access_token = account
            .access_token
            .as_ref()
            .ok_or_else(|| anyhow!("threads access_token is missing"))?;

        let threads_user_id = account
            .external_account_id
            .as_ref()
            .ok_or_else(|| anyhow!("threads external_account_id/user_id is missing"))?;

        if payload.image_url.is_some() {
            return Err(anyhow!("Threads image posting is not implemented yet"));
        }

        let url = format!("https://graph.threads.net/v1.0/{threads_user_id}/threads");

        let response = self
            .client
            .post(&url)
            .form(&[
                ("media_type", "TEXT"),
                ("text", payload.text.as_str()),
                ("access_token", access_token.as_str()),
                ("auto_publish_text", "true"),
            ])
            .send()
            .await?;

        let status = response.status();
        let body = response.text().await?;

        if !status.is_success() {
            return Err(anyhow!("threads HTTP error {status}: {body}"));
        }

        let resp: Value = serde_json::from_str(&body)?;

        let id = resp
            .get("id")
            .and_then(|v| v.as_str())
            .map(|v| v.to_string());

        if id.is_none() {
            return Err(anyhow!("threads returned no id: {resp}"));
        }

        Ok(PublishResult {
            external_post_id: id,
            raw_response: Some(resp.to_string()),
        })
    }
}