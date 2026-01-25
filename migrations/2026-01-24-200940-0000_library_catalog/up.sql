-- Your SQL goes here
-- publishers
CREATE TABLE publishers (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  key text UNIQUE NOT NULL,
  name text NOT NULL,
  website text,
  created_at timestamp NOT NULL DEFAULT now(),
  updated_at timestamp NOT NULL DEFAULT now(),
  created_by uuid NOT NULL REFERENCES users(id)
);

-- course_series (УМК)
CREATE TABLE course_series (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  publisher_id uuid NOT NULL REFERENCES publishers(id) ON DELETE CASCADE,
  key text NOT NULL,
  title text NOT NULL,
  description text,
  language text NOT NULL DEFAULT 'en',
  is_active boolean NOT NULL DEFAULT true,
  created_at timestamp NOT NULL DEFAULT now(),
  updated_at timestamp NOT NULL DEFAULT now(),
  created_by uuid NOT NULL REFERENCES users(id),
  UNIQUE (publisher_id, key)
);

CREATE INDEX idx_course_series_publisher ON course_series(publisher_id);

-- course_levels
CREATE TABLE course_levels (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  course_id uuid NOT NULL REFERENCES course_series(id) ON DELETE CASCADE,
  level_code text NOT NULL,
  title text NOT NULL,
  order_index int4 NOT NULL DEFAULT 0,
  metadata jsonb,
  created_at timestamp NOT NULL DEFAULT now(),
  updated_at timestamp NOT NULL DEFAULT now(),
  created_by uuid NOT NULL REFERENCES users(id),
  UNIQUE (course_id, level_code)
);

CREATE INDEX idx_course_levels_course ON course_levels(course_id);

-- course_units
CREATE TABLE course_units (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  level_id uuid NOT NULL REFERENCES course_levels(id) ON DELETE CASCADE,
  unit_code text,
  title text NOT NULL,
  order_index int4 NOT NULL DEFAULT 0,
  metadata jsonb,
  created_at timestamp NOT NULL DEFAULT now(),
  updated_at timestamp NOT NULL DEFAULT now(),
  created_by uuid NOT NULL REFERENCES users(id)
);

CREATE INDEX idx_course_units_level ON course_units(level_id);

-- course_modules
CREATE TABLE course_modules (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  unit_id uuid NOT NULL REFERENCES course_units(id) ON DELETE CASCADE,
  module_code text,
  title text NOT NULL,
  order_index int4 NOT NULL DEFAULT 0,
  metadata jsonb,
  created_at timestamp NOT NULL DEFAULT now(),
  updated_at timestamp NOT NULL DEFAULT now(),
  created_by uuid NOT NULL REFERENCES users(id)
);

CREATE INDEX idx_course_modules_unit ON course_modules(unit_id);
