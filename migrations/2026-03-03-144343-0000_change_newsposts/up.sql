-- Your SQL goes here
ALTER TABLE news_posts
  ADD COLUMN IF NOT EXISTS level text NOT NULL DEFAULT 'B1',
  ADD COLUMN IF NOT EXISTS image_url text,
  ADD COLUMN IF NOT EXISTS phonetic text,
  ADD COLUMN IF NOT EXISTS is_hot boolean NOT NULL DEFAULT false,
  ADD COLUMN IF NOT EXISTS tags text[]; -- optional, если хочешь фильтры

-- расширяем kind (ты ранее просила больше типов)
ALTER TABLE news_posts
  DROP CONSTRAINT IF EXISTS news_posts_kind_check;

ALTER TABLE news_posts
  ADD CONSTRAINT news_posts_kind_check
  CHECK (kind IN ('idiom','news','tip','collocation','vocab','grammar','phrase','anecdote'));

CREATE INDEX IF NOT EXISTS news_posts_hot_idx ON news_posts (is_hot, created_at DESC);
CREATE INDEX IF NOT EXISTS news_posts_level_idx ON news_posts (level);