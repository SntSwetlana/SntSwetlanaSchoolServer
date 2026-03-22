use tokio::time::{self, Duration, MissedTickBehavior};

use crate::models::social::SocialAccount;
use crate::social::adapters::{PublishPayload, SocialPublisher};
use crate::social::adapters::telegram::TelegramPublisher;

pub fn spawn_hourly_telegram_greeting(account: SocialAccount) {
    tokio::spawn(async move {
        let publisher = TelegramPublisher::new();

        let mut interval = time::interval(Duration::from_secs(60*60*24)); // раз в сутки, чтобы не спамить слишком часто. Для тестов можно поставить 10 секунд или так. Но в проде - 24 часа.

        // Чтобы после лагов/сна не было "догоняющих" публикаций пачкой
        interval.set_missed_tick_behavior(MissedTickBehavior::Skip);

        // Первый tick у tokio interval происходит сразу.
        // Проглатываем его, чтобы первая отправка была через час.
        interval.tick().await;

        loop {
            interval.tick().await;

            let now = chrono::Local::now();
            let text = format!(
                "Привет! Сейчас <b>{}</b>",
                now.format("%Y-%m-%d %H:%M:%S")
            );

            let payload = PublishPayload {
                text,
                image_url: None,
            };

            match publisher.publish(&account, payload).await {
                Ok(result) => {
                    println!(
                        "[telegram_hourly] sent ok, external_post_id={:?}",
                        result.external_post_id
                    );
                }
                Err(err) => {
                    eprintln!("[telegram_hourly] send failed: {err:#}");
                }
            }
        }
    });
}