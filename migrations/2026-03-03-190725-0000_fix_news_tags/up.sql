-- 1) level: если хочешь гарантировать A1..C2, можно потом сделать CHECK
ALTER TABLE news_posts
  ALTER COLUMN level SET DEFAULT 'B1',
  ALTER COLUMN level SET NOT NULL;

-- 2) tags: делаем массив text[] без null-элементов, NOT NULL и дефолт пустой массив
-- сначала проставим пустой массив там, где NULL
UPDATE news_posts
SET tags = '{}'::text[]
WHERE tags IS NULL;

-- затем заставим колонку быть NOT NULL
ALTER TABLE news_posts
  ALTER COLUMN tags SET NOT NULL,
  ALTER COLUMN tags SET DEFAULT '{}'::text[];

-- (опционально) если вдруг тип был не text[] — приводим:
ALTER TABLE news_posts
  ALTER COLUMN tags TYPE text[]
  USING tags::text[];