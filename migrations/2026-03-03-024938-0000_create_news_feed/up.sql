-- Your SQL goes here
-- needs: CREATE EXTENSION IF NOT EXISTS pgcrypto;  (для gen_random_uuid)

CREATE TABLE IF NOT EXISTS news_posts (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  kind text NOT NULL CHECK (kind IN ('idiom','news','tip')) DEFAULT 'news',
  title text NOT NULL,
  excerpt text,
  body text,
  source text,
  url text,
  created_at timestamptz NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS news_posts_created_at_idx ON news_posts (created_at DESC);
CREATE INDEX IF NOT EXISTS news_posts_kind_idx ON news_posts (kind);