-- Your SQL goes here
ALTER TABLE quizlet_sets
ADD COLUMN title_tsv tsvector GENERATED ALWAYS AS (to_tsvector('simple', coalesce(title,''))) STORED;

CREATE INDEX idx_quizlet_sets_title_tsv ON quizlet_sets USING GIN (title_tsv);
