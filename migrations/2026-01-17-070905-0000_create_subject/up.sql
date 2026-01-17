-- Your SQL goes here
-- 2026xxxx_create_subjects/up.sql
CREATE TABLE subjects (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name TEXT NOT NULL UNIQUE,
  description TEXT,
  color TEXT NOT NULL DEFAULT '#3B82F6',
  icon TEXT,
  "order" INT NOT NULL DEFAULT 0,
  is_active BOOLEAN NOT NULL DEFAULT TRUE,
  created_at TIMESTAMP NOT NULL DEFAULT now(),
  updated_at TIMESTAMP NOT NULL DEFAULT now(),
  created_by UUID NOT NULL REFERENCES users(id)
);

CREATE INDEX idx_subjects_active ON subjects(is_active);
CREATE INDEX idx_subjects_order ON subjects("order");
