use anyhow::{bail, Result};
use async_trait::async_trait;

use crate::models::news::NewsPost;
use crate::models::social::SocialAccount;
use crate::social::adapters::{PublishPayload, PublishResult, SocialPublisher};

#[derive(Clone)]
pub struct InstagramPublisher;

impl InstagramPublisher {
    pub fn new() -> Self {
        Self
    }
}

#[async_trait]
impl SocialPublisher for InstagramPublisher {
    async fn publish(
        &self,
        _account: &SocialAccount,
        _payload: PublishPayload,
    ) -> Result<PublishResult> {
        bail!("Instagram publisher is not implemented yet")
    }
}