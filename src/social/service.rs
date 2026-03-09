use std::sync::Arc;

use anyhow::{anyhow, Result};

use crate::social::adapters::instagram::InstagramPublisher;
use crate::social::adapters::telegram::TelegramPublisher;
use crate::social::adapters::threads::ThreadsPublisher;
use crate::social::adapters::vk::VkPublisher;
use crate::social::adapters::SocialPublisher;
use crate::social::types::SocialProvider;

#[derive(Clone)]
pub struct SocialPublishers {
    telegram: Arc<TelegramPublisher>,
    vk: Arc<VkPublisher>,
    instagram: Arc<InstagramPublisher>,
    threads: Arc<ThreadsPublisher>,
}

impl SocialPublishers {
    pub fn new() -> Self {
        Self {
            telegram: Arc::new(TelegramPublisher::new()),
            vk: Arc::new(VkPublisher::new()),
            instagram: Arc::new(InstagramPublisher::new()),
            threads: Arc::new(ThreadsPublisher::new()),
        }
    }

    pub fn get(&self, provider: SocialProvider) -> Result<Arc<dyn SocialPublisher>> {
        match provider {
            SocialProvider::Telegram => Ok(self.telegram.clone()),
            SocialProvider::Vk => Ok(self.vk.clone()),
            SocialProvider::Instagram => Ok(self.instagram.clone()),
            SocialProvider::Threads => Ok(self.threads.clone()),
        }
    }
}