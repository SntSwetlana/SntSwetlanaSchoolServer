use diesel::prelude::*;
use diesel::result::QueryResult;

use crate::models::social::{NewSocialPostJob, SocialPostJob };
use crate::schema::social_post_jobs;

pub fn create_social_post_job(
    conn: &mut PgConnection,
    new_job: &NewSocialPostJob,
) -> QueryResult<SocialPostJob> {
    diesel::insert_into(social_post_jobs::table)
        .values(new_job)
        .returning(SocialPostJob::as_returning())
        .get_result(conn)
}

use anyhow::{Result};
use diesel::sql_types::{BigInt, Nullable, Text, Uuid as SqlUuid};
use uuid::Uuid;

#[derive(Debug, QueryableByName)]
pub struct DueJobRow {
    #[diesel(sql_type = BigInt)]
    pub job_id: i64,

    #[diesel(sql_type = SqlUuid)]
    pub news_post_id: Uuid,

    #[diesel(sql_type = Text)]
    pub provider: String,

    #[diesel(sql_type = Text)]
    pub account_name: String,

    #[diesel(sql_type = Nullable<Text>)]
    pub external_account_id: Option<String>,

    #[diesel(sql_type = Nullable<Text>)]
    pub access_token: Option<String>,

    #[diesel(sql_type = Nullable<Text>)]
    pub refresh_token: Option<String>,

    #[diesel(sql_type = Nullable<Text>)]
    pub title: Option<String>,

    #[diesel(sql_type = Nullable<Text>)]
    pub excerpt: Option<String>,

    #[diesel(sql_type = Nullable<Text>)]
    pub body: Option<String>,

    #[diesel(sql_type = Nullable<Text>)]
    pub image_url: Option<String>,

    #[diesel(sql_type = Nullable<Text>)]
    pub explanation_en: Option<String>,
}

pub fn claim_one_due_job(conn: &mut PgConnection) -> Result<Option<DueJobRow>> {
    let sql = r#"
    WITH picked AS (
        SELECT spj.id
        FROM social_post_jobs spj
        WHERE spj.status IN ('pending', 'scheduled', 'failed')
          AND spj.scheduled_for <= now()
          AND (spj.next_retry_at IS NULL OR spj.next_retry_at <= now())
        ORDER BY spj.scheduled_for ASC, spj.id ASC
        FOR UPDATE SKIP LOCKED
        LIMIT 1
    ),
    updated AS (
        UPDATE social_post_jobs spj
        SET status = 'processing',
            updated_at = now()
        WHERE spj.id IN (SELECT id FROM picked)
        RETURNING spj.id, spj.news_post_id, spj.social_account_id
    )
    SELECT
        u.id AS job_id,
        u.news_post_id,
        sa.provider,
        sa.account_name,
        sa.external_account_id,
        sa.access_token,
        sa.refresh_token,
        np.title,
        np.excerpt,
        np.body,
        np.image_url
    FROM updated u
    JOIN social_accounts sa ON sa.id = u.social_account_id
    JOIN news_posts np ON np.id = u.news_post_id
    "#;

    let rows = diesel::sql_query(sql).load::<DueJobRow>(conn)?;
    Ok(rows.into_iter().next())
}

pub fn mark_job_posted(
    conn: &mut PgConnection,
    job_id: i64,
    external_post_id: Option<String>,
) -> Result<()> {
    diesel::sql_query(
        r#"
        UPDATE social_post_jobs
        SET status = 'posted',
            published_at = now(),
            external_post_id = $1,
            error_message = NULL,
            updated_at = now()
        WHERE id = $2
        "#,
    )
    .bind::<Nullable<Text>, _>(external_post_id)
    .bind::<BigInt, _>(job_id)
    .execute(conn)?;

    Ok(())
}

pub fn mark_job_failed(
    conn: &mut PgConnection,
    job_id: i64,
    error_message: String,
    next_retry_minutes: Option<i32>,
) -> Result<()> {
    match next_retry_minutes {
        Some(minutes) => {
            diesel::sql_query(
                r#"
                UPDATE social_post_jobs
                SET status = 'failed',
                    retry_count = retry_count + 1,
                    error_message = $1,
                    next_retry_at = now() + ($2 || ' minutes')::interval,
                    updated_at = now()
                WHERE id = $3
                "#,
            )
            .bind::<Text, _>(error_message)
            .bind::<diesel::sql_types::Integer, _>(minutes)
            .bind::<BigInt, _>(job_id)
            .execute(conn)?;
        }
        None => {
            diesel::sql_query(
                r#"
                UPDATE social_post_jobs
                SET status = 'failed',
                    retry_count = retry_count + 1,
                    error_message = $1,
                    next_retry_at = NULL,
                    updated_at = now()
                WHERE id = $2
                "#,
            )
            .bind::<Text, _>(error_message)
            .bind::<BigInt, _>(job_id)
            .execute(conn)?;
        }
    }

    Ok(())
}

pub fn insert_attempt(
    conn: &mut PgConnection,
    job_id: i64,
    attempt_no: i32,
    status: &str,
    response_body: Option<String>,
    error_message: Option<String>,
) -> Result<()> {
    diesel::sql_query(
        r#"
        INSERT INTO social_post_attempts
            (social_post_job_id, attempt_no, status, response_body, error_message)
        VALUES ($1, $2, $3, $4, $5)
        "#,
    )
    .bind::<BigInt, _>(job_id)
    .bind::<diesel::sql_types::Integer, _>(attempt_no)
    .bind::<Text, _>(status)
    .bind::<Nullable<Text>, _>(response_body)
    .bind::<Nullable<Text>, _>(error_message)
    .execute(conn)?;

    Ok(())
}