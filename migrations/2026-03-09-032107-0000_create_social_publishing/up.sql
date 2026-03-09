CREATE TABLE IF NOT EXISTS social_accounts (
    id BIGSERIAL PRIMARY KEY,
    provider TEXT NOT NULL,
    account_name TEXT NOT NULL,
    external_account_id TEXT,
    access_token TEXT,
    refresh_token TEXT,
    token_expires_at TIMESTAMPTZ,
    settings_json JSONB NOT NULL DEFAULT '{}'::jsonb,
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE IF NOT EXISTS social_post_jobs (
    id BIGSERIAL PRIMARY KEY,
    news_post_id UUID NOT NULL REFERENCES news_posts(id) ON DELETE CASCADE,
    social_account_id BIGINT NOT NULL REFERENCES social_accounts(id) ON DELETE CASCADE,

    status TEXT NOT NULL DEFAULT 'pending',
    scheduled_for TIMESTAMPTZ NOT NULL,
    published_at TIMESTAMPTZ,
    retry_count INTEGER NOT NULL DEFAULT 0,
    next_retry_at TIMESTAMPTZ,

    external_post_id TEXT,
    error_message TEXT,
    payload_json JSONB NOT NULL DEFAULT '{}'::jsonb,

    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE IF NOT EXISTS social_post_attempts (
    id BIGSERIAL PRIMARY KEY,
    social_post_job_id BIGINT NOT NULL REFERENCES social_post_jobs(id) ON DELETE CASCADE,
    attempt_no INTEGER NOT NULL,
    status TEXT NOT NULL,
    response_body TEXT,
    error_message TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_social_accounts_provider
    ON social_accounts(provider);

CREATE INDEX IF NOT EXISTS idx_social_post_jobs_due
    ON social_post_jobs(status, scheduled_for, next_retry_at);

CREATE INDEX IF NOT EXISTS idx_social_post_jobs_news_post_id
    ON social_post_jobs(news_post_id);

CREATE INDEX IF NOT EXISTS idx_social_post_jobs_social_account_id
    ON social_post_jobs(social_account_id);

CREATE INDEX IF NOT EXISTS idx_social_post_attempts_job_id
    ON social_post_attempts(social_post_job_id);