-- Your SQL goes here
ALTER TABLE news_posts
  DROP CONSTRAINT IF EXISTS news_posts_kind_check;

ALTER TABLE news_posts
  ADD CONSTRAINT news_posts_kind_check
  CHECK (kind IN ('idiom','news','tip','collocation','vocab','grammar','phrase','anecdote'));