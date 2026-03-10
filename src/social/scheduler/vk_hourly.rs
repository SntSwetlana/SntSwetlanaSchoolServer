use chrono::Local;
use tokio::time::{self, Duration, MissedTickBehavior};

use crate::models::social::SocialAccount;
use crate::social::adapters::vk::VkPublisher;
use crate::social::adapters::{PublishPayload, SocialPublisher};

pub fn spawn_hourly_vk_greeting(account: SocialAccount) {
    tokio::spawn(async move {
        println!("[vk_scheduler] started for account: {}", account.account_name);

        let publisher = VkPublisher::new();

        let mut interval = time::interval(Duration::from_secs(60 * 60));
        interval.set_missed_tick_behavior(MissedTickBehavior::Skip);

        interval.tick().await;

        loop {
            println!("[vk_scheduler] waiting for next tick...");
            interval.tick().await;

            let now = Local::now();
            let payload = PublishPayload {
                text: format!("Привет! Сейчас {}", now.format("%Y-%m-%d %H:%M:%S")),
                image_url: None,
            };

            match publisher.publish(&account, payload).await {
                Ok(res) => {
                    println!("[vk_scheduler] sent ok, post_id={:?}", res.external_post_id);
                }
                Err(err) => {
                    eprintln!("[vk_scheduler] send failed: {err:#}");
                }
            }
        }
    });
}