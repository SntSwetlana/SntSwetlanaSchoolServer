use std::time::Duration;
use crate::models::news::NewsPost;

use anyhow::Result;
use tokio::time;
use tracing::{error};

use crate::social_jobs::{
    claim_one_due_job, insert_attempt, mark_job_failed, mark_job_posted,
};
use crate::db::DbPool;
use crate::models::social::SocialAccount;
use crate::social::adapters::PublishPayload;
use crate::social::service::SocialPublishers;
use crate::social::types::SocialProvider;

#[derive(Clone)]
pub struct SocialWorker {
    pool: DbPool,
    publishers: SocialPublishers,
}

impl SocialWorker {
    pub fn new(pool: DbPool) -> Self {
        Self {
            pool,
            publishers: SocialPublishers::new(),
        }
    }

    pub async fn run_forever(self) {
        let mut ticker = time::interval(Duration::from_secs(15));

        loop {
            ticker.tick().await;

            if let Err(err) = self.process_until_empty().await {
                error!("social worker loop error: {err:#}");
            }
        }
    }

    async fn process_until_empty(&self) -> Result<()> {
        loop {
            let claimed = {
                let pool = self.pool.clone();
                tokio::task::spawn_blocking(move || -> Result<_> {
                    let mut conn = pool.get()?;
                    claim_one_due_job(&mut conn)
                })
                .await??
            };

            let Some(job) = claimed else {
                break;
            };

            let provider = match SocialProvider::from_db(&job.provider) {
                Some(p) => p,
                None => {
                    let msg = format!("unknown provider: {}", job.provider);
                    self.fail_job(job.job_id, msg, None).await?;
                    continue;
                }
            };

            let publisher = self.publishers.get(provider)?;

            let account = SocialAccount {
                id: 0,
                provider: job.provider.clone(),
                account_name: job.account_name.clone(),
                external_account_id: job.external_account_id.clone(),
                access_token: job.access_token.clone(),
                refresh_token: job.refresh_token.clone(),
                token_expires_at: None,
                settings_json: serde_json::json!({}),
                is_active: true,
                created_at: chrono::Utc::now(),
                updated_at: chrono::Utc::now(),
            };

            let payload = PublishPayload {
                text: build_social_text_from_due_job(&job),
                image_url: job.image_url.clone(),
            };

            match publisher.publish(&account, payload).await {
                Ok(result) => {
                    self.complete_job(
                        job.job_id,
                        result.external_post_id,
                        result.raw_response,
                    )
                    .await?;
                }
                Err(err) => {
                    self.fail_job(job.job_id, err.to_string(), Some(15)).await?;
                }
            }        }

        Ok(())
    }

    async fn complete_job(
        &self,
        job_id: i64,
        external_post_id: Option<String>,
        response_body: Option<String>,
    ) -> Result<()> {
        let pool = self.pool.clone();
        tokio::task::spawn_blocking(move || -> Result<()> {
            let mut conn = pool.get()?;
            insert_attempt(&mut conn, job_id, 1, "success", response_body, None)?;
            mark_job_posted(&mut conn, job_id, external_post_id)?;
            Ok(())
        })
        .await??;

        Ok(())
    }

    async fn fail_job(
        &self,
        job_id: i64,
        error_message: String,
        retry_after_minutes: Option<i32>,
    ) -> Result<()> {
        let pool = self.pool.clone();
        let error_for_attempt = error_message.clone();

        tokio::task::spawn_blocking(move || -> Result<()> {
            let mut conn = pool.get()?;
            insert_attempt(
                &mut conn,
                job_id,
                1,
                "failed",
                None,
                Some(error_for_attempt),
            )?;
            mark_job_failed(&mut conn, job_id, error_message, retry_after_minutes)?;
            Ok(())
        })
        .await??;

        Ok(())
    }
}

fn build_social_text(post: &NewsPost) -> String {
    let mut parts = Vec::new();

    parts.push(format!("<b>{}</b>", post.title));

    if let Some(excerpt) = &post.excerpt {
        if !excerpt.trim().is_empty() {
            parts.push(excerpt.clone());
        }
    }

    if let Some(body) = &post.body {
        if !body.trim().is_empty() {
            parts.push(body.clone());
        }
    }

    parts.join("\n\n")
}

fn build_social_text_from_due_job(job: &crate::social_jobs::DueJobRow) -> String {
    let mut parts = Vec::new();

    parts.push(format!("<b>{}</b>", job.title.as_deref().unwrap_or("Untitled")));

    if let Some(excerpt) = &job.excerpt {
        if !excerpt.trim().is_empty() {
            parts.push(excerpt.clone());
        }
    }

    if let Some(explanation_en) = &job.explanation_en {
        if !explanation_en.trim().is_empty() {
            parts.push(explanation_en.clone());
        }
    }

    if let Some(body) = &job.body {
        if !body.trim().is_empty() {
            parts.push(body.clone());
        }
    }

    parts.join("\n\n")
}