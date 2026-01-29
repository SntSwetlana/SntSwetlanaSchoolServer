-- Your SQL goes here
-- UUID генерация (Postgres)
CREATE EXTENSION IF NOT EXISTS "pgcrypto";

-- Наборы (как "Quizlet set")
CREATE TABLE quizlet_sets (
  id UUID PRIMARY KEY,                       -- будем использовать funnelUUID
  slug TEXT NOT NULL UNIQUE,                 -- spotlight-8-appendix-5d-flash-cards
  title TEXT NOT NULL,                       -- человекочитаемое название (можно = slug)
  description TEXT,

  -- будущие фильтры/группировки
  language_level TEXT,                       -- A1..C2 (или твои значения)
  textbook_id UUID NULL,                     -- если будет таблица textbooks
  folder_id UUID NULL,                       -- если будет таблица folders
  owner_id UUID NULL,                        -- если будет users

  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),

  -- полезно знать источник/путь
  source_url TEXT
);

-- Карточки
CREATE TABLE quizlet_cards (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  set_id UUID NOT NULL REFERENCES quizlet_sets(id) ON DELETE CASCADE,

  position INT NOT NULL,                     -- порядок внутри набора
  term TEXT NOT NULL,
  explanation TEXT NOT NULL,

  -- “небольшая картинка, если нужно”
  image_url TEXT,                            -- URL на картинку (или путь)
  image_alt TEXT,
  image_data BYTEA, 
  image_mime TEXT,  

  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- Индексы под фильтры/выборки
CREATE INDEX idx_quizlet_sets_created_at ON quizlet_sets (created_at DESC);
CREATE INDEX idx_quizlet_sets_textbook ON quizlet_sets (textbook_id);
CREATE INDEX idx_quizlet_sets_level ON quizlet_sets (language_level);
CREATE INDEX idx_quizlet_sets_folder ON quizlet_sets (folder_id);
CREATE INDEX idx_quizlet_sets_owner ON quizlet_sets (owner_id);

CREATE UNIQUE INDEX uq_quizlet_cards_set_pos ON quizlet_cards (set_id, position);

-- правило про картинку
ALTER TABLE quizlet_cards
ADD CONSTRAINT quizlet_cards_image_choice_chk
CHECK (
  (image_url IS NULL AND image_data IS NULL AND image_mime IS NULL)
  OR
  (image_url IS NOT NULL AND image_data IS NULL AND image_mime IS NULL)
  OR
  (image_url IS NULL AND image_data IS NOT NULL AND image_mime IS NOT NULL)
);
