use anyhow::{anyhow, Result};
use async_trait::async_trait;
use reqwest::Client;
use serde_json::Value;
use tokio::time::{sleep, Duration};

use crate::models::social::SocialAccount;
use crate::social::adapters::{PublishPayload, PublishResult, SocialPublisher};

#[derive(Clone)]
pub struct InstagramPublisher {
    client: Client,
}

impl InstagramPublisher {
    pub fn new() -> Self {
        Self {
            client: Client::new(),
        }
    }

    async fn wait_until_container_ready(
        &self,
        creation_id: &str,
        access_token: &str,
    ) -> Result<()> {
        let status_url = format!(
            "https://graph.instagram.com/{creation_id}?fields=status_code,status&access_token={access_token}"
        );

        for _ in 0..20 {
            let resp = self.client.get(&status_url).send().await?;
            let status = resp.status();
            let body = resp.text().await?;

            if !status.is_success() {
                return Err(anyhow!("instagram status check HTTP error {status}: {body}"));
            }

            let json: Value = serde_json::from_str(&body)?;
            let status_code = json
                .get("status_code")
                .and_then(|v| v.as_str())
                .unwrap_or("");

            match status_code {
                "FINISHED" => return Ok(()),
                "ERROR" => return Err(anyhow!("instagram container failed: {json}")),
                "IN_PROGRESS" | "EXPIRED" | "" => {
                    sleep(Duration::from_secs(3)).await;
                }
                other => {
                    return Err(anyhow!("unknown instagram container status: {other}; body={json}"));
                }
            }
        }

        Err(anyhow!("instagram container was not ready in time"))
    }
}

#[async_trait]
impl SocialPublisher for InstagramPublisher {
    async fn publish(
        &self,
        account: &SocialAccount,
        payload: PublishPayload,
    ) -> Result<PublishResult> {
        let access_token = account
            .access_token
            .as_ref()
            .ok_or_else(|| anyhow!("instagram access_token is missing"))?;

        let ig_user_id = account
            .external_account_id
            .as_ref()
            .ok_or_else(|| anyhow!("instagram external_account_id / ig_user_id is missing"))?;

        let image_url = payload
            .image_url
            .as_ref()
            .ok_or_else(|| anyhow!("Instagram publishing currently requires image_url"))?;

        let create_url = format!("https://graph.instagram.com/v24.0/{ig_user_id}/media");

        let create_resp = self
            .client
            .post(&create_url)
            .form(&[
                ("image_url", image_url.as_str()),
                ("caption", payload.text.as_str()),
                ("access_token", access_token.as_str()),
            ])
            .send()
            .await?;

        let create_status = create_resp.status();
        let create_body = create_resp.text().await?;

        if !create_status.is_success() {
            return Err(anyhow!(
                "instagram create media HTTP error {}: {}",
                create_status,
                create_body
            ));
        }

        let create_json: Value = serde_json::from_str(&create_body)?;
        let creation_id = create_json
            .get("id")
            .and_then(|v| v.as_str())
            .ok_or_else(|| anyhow!("instagram create media returned no id: {create_json}"))?
            .to_string();

        self.wait_until_container_ready(&creation_id, access_token).await?;

        let publish_url = format!("https://graph.instagram.com/v24.0/{ig_user_id}/media_publish");

        let publish_resp = self
            .client
            .post(&publish_url)
            .form(&[
                ("creation_id", creation_id.as_str()),
                ("access_token", access_token.as_str()),
            ])
            .send()
            .await?;

        let publish_status = publish_resp.status();
        let publish_body = publish_resp.text().await?;

        if !publish_status.is_success() {
            return Err(anyhow!(
                "instagram publish media HTTP error {}: {}",
                publish_status,
                publish_body
            ));
        }

        let publish_json: Value = serde_json::from_str(&publish_body)?;
        let media_id = publish_json
            .get("id")
            .and_then(|v| v.as_str())
            .map(|v| v.to_string());

        if media_id.is_none() {
            return Err(anyhow!(
                "instagram publish returned no media id: {}",
                publish_json
            ));
        }

        Ok(PublishResult {
            external_post_id: media_id,
            raw_response: Some(publish_json.to_string()),
        })
    }
}