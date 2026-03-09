use chrono::Local;
use tokio::time::{self, Duration, MissedTickBehavior};

use crate::models::social::SocialAccount;
use crate::social::adapters::threads::ThreadsPublisher;
use crate::social::adapters::{PublishPayload, SocialPublisher};

pub fn spawn_hourly_threads_greeting(account: SocialAccount) {
    tokio::spawn(async move {
        println!("[threads_scheduler] started for account: {}", account.account_name);

        let publisher = ThreadsPublisher::new();

        let mut interval = time::interval(Duration::from_secs(60*60*24)); // раз в сутки, чтобы не спамить слишком часто. Для тестов можно поставить 10 секунд или так. Но в проде - 24 часа.
        interval.set_missed_tick_behavior(MissedTickBehavior::Skip);

        // пропустить мгновенный первый tick
        interval.tick().await;

        loop {
            println!("[threads_scheduler] waiting for next tick...");
            interval.tick().await;

            let now = Local::now();
            let text = format!(
                "Привет! Сейчас {}",
                now.format("%Y-%m-%d %H:%M:%S")
            );

            println!("[threads_scheduler] tick at {}", now);

            let payload = PublishPayload {
                text,
                image_url: None,
            };

            match publisher.publish(&account, payload).await {
                Ok(res) => {
                    println!(
                        "[threads_scheduler] sent ok, external_post_id={:?}",
                        res.external_post_id
                    );
                }
                Err(err) => {
                    eprintln!("[threads_scheduler] send failed: {err:#}");
                }
            }
        }
    });
}