-- Your SQL goes here
-- Контент (задания/страницы/уроки)
CREATE TABLE IF NOT EXISTS content_items (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  kind TEXT NOT NULL,                          -- exercise|lesson|page
  status TEXT NOT NULL,                        -- draft|review|published|archived|blocked
  grade_level INT NOT NULL,
  title TEXT NOT NULL,
  created_by UUID NOT NULL REFERENCES users(id),
  created_at TIMESTAMP NOT NULL DEFAULT now(),
  updated_at TIMESTAMP NOT NULL DEFAULT now(),
  published_at TIMESTAMP,
  is_liquid BOOLEAN NOT NULL DEFAULT true,
  blocked_reason TEXT
);

CREATE INDEX IF NOT EXISTS idx_content_items_status ON content_items(status);
CREATE INDEX IF NOT EXISTS idx_content_items_grade ON content_items(grade_level);

-- Версии содержимого (полное тело задания)
CREATE TABLE IF NOT EXISTS content_versions (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  content_id UUID NOT NULL REFERENCES content_items(id) ON DELETE CASCADE,
  version INT NOT NULL,
  body JSONB NOT NULL,
  change_summary TEXT,
  created_by UUID NOT NULL REFERENCES users(id),
  created_at TIMESTAMP NOT NULL DEFAULT now(),
  UNIQUE(content_id, version)
);

CREATE INDEX IF NOT EXISTS idx_content_versions_content_id ON content_versions(content_id);

-- Аудит событий
CREATE TABLE IF NOT EXISTS audit_log (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  actor_id UUID REFERENCES users(id),
  action TEXT NOT NULL,                         -- role.assign, content.block, ...
  entity_type TEXT NOT NULL,                    -- user, content, ...
  entity_id UUID NOT NULL,
  metadata JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_audit_entity ON audit_log(entity_type, entity_id);
CREATE INDEX IF NOT EXISTS idx_audit_created_at ON audit_log(created_at);
