use chrono::Local;
use tokio::time::{self, Duration, MissedTickBehavior};

use crate::models::social::SocialAccount;
use crate::social::adapters::instagram::InstagramPublisher;
use crate::social::adapters::{PublishPayload, SocialPublisher};

pub fn spawn_hourly_instagram_greeting(account: SocialAccount) {
    tokio::spawn(async move {
        println!("[instagram_scheduler] started for account: {}", account.account_name);

        let publisher = InstagramPublisher::new();

        let mut interval = time::interval(Duration::from_secs(60*60*24)); // раз в сутки, чтобы не спамить слишком часто. Для тестов можно поставить 10 секунд или так. Но в проде - 24 часа.
        interval.set_missed_tick_behavior(MissedTickBehavior::Skip);

        interval.tick().await;

        loop {
            println!("[instagram_scheduler] waiting for next tick...");
            interval.tick().await;

            let now = Local::now();
            let text = format!(
                "Привет! Сейчас {}",
                now.format("%Y-%m-%d %H:%M:%S")
            );

            let payload = PublishPayload {
                text,
                image_url: Some("https://upload.wikimedia.org/wikipedia/commons/3/3a/Cat03.jpg".to_string()),
            };

            match publisher.publish(&account, payload).await {
                Ok(res) => {
                    println!(
                        "[instagram_scheduler] sent ok, external_post_id={:?}",
                        res.external_post_id
                    );
                }
                Err(err) => {
                    eprintln!("[instagram_scheduler] send failed: {err:#}");
                }
            }
        }
    });
}