use axum::{http::StatusCode, response::IntoResponse};
use crate::social::adapters::vk::VkPublisher;
use crate::social::adapters::instagram::InstagramPublisher;
use crate::social::adapters::{PublishPayload, SocialPublisher};
use crate::social::instagram_config::instagram_account_from_env;

pub async fn test_instagram_post() -> Result<impl IntoResponse, (StatusCode, String)> {
    let account = instagram_account_from_env()
        .map_err(|e| (StatusCode::INTERNAL_SERVER_ERROR, e.to_string()))?;

    let publisher = InstagramPublisher::new();

    let payload = PublishPayload {
        text: format!("Test from server at {}", chrono::Utc::now()),
        image_url: Some(
            "https://upload.wikimedia.org/wikipedia/commons/3/3a/Cat03.jpg".to_string(),
        ),
    };

    let result = publisher
        .publish(&account, payload)
        .await
        .map_err(|e| (StatusCode::INTERNAL_SERVER_ERROR, e.to_string()))?;

    Ok(format!("ok: {:?}", result.external_post_id))
}

use crate::social::vk_config::vk_account_from_env;

pub async fn test_vk_post() -> Result<impl IntoResponse, (StatusCode, String)> {
    let account = vk_account_from_env()
        .map_err(|e| (StatusCode::INTERNAL_SERVER_ERROR, e.to_string()))?;

    let publisher = VkPublisher::new();

    let payload = PublishPayload {
        text: format!("Test VK post from server at {}", chrono::Utc::now()),
        image_url: None,
    };

    let result = publisher
        .publish(&account, payload)
        .await
        .map_err(|e| (StatusCode::INTERNAL_SERVER_ERROR, e.to_string()))?;

    Ok(format!("ok: {:?}", result.external_post_id))
}