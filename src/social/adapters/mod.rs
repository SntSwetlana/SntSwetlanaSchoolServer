pub mod telegram;
pub mod vk;
pub mod instagram;
pub mod threads;

use async_trait::async_trait;
use anyhow::Result;

use crate::models::news::NewsPost;
use crate::models::social::SocialAccount;

#[derive(Debug, Clone)]
pub struct PublishPayload {
    pub text: String,
    pub image_url: Option<String>,
}

#[derive(Debug, Clone)]
pub struct PublishResult {
    pub external_post_id: Option<String>,
    pub raw_response: Option<String>,
}

#[async_trait]
pub trait SocialPublisher: Send + Sync {
    async fn publish(
        &self,
        account: &SocialAccount,
        payload: PublishPayload,
    ) -> Result<PublishResult>;
}