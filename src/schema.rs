// @generated automatically by Diesel CLI.

pub mod sql_types {
    #[derive(diesel::query_builder::QueryId, Clone, diesel::sql_types::SqlType)]
    #[diesel(postgres_type(name = "tsvector", schema = "pg_catalog"))]
    pub struct Tsvector;
}

diesel::table! {
    audit_log (id) {
        id -> Uuid,
        actor_id -> Nullable<Uuid>,
        action -> Text,
        entity_type -> Text,
        entity_id -> Uuid,
        metadata -> Nullable<Jsonb>,
        created_at -> Timestamp,
    }
}

diesel::table! {
    content_items (id) {
        id -> Uuid,
        kind -> Text,
        status -> Text,
        grade_level -> Int4,
        title -> Text,
        created_by -> Uuid,
        created_at -> Timestamp,
        updated_at -> Timestamp,
        published_at -> Nullable<Timestamp>,
        is_liquid -> Bool,
        blocked_reason -> Nullable<Text>,
        difficulty -> Nullable<Text>,
        time_estimate_minutes -> Int4,
    }
}

diesel::table! {
    content_versions (id) {
        id -> Uuid,
        content_id -> Uuid,
        version -> Int4,
        body -> Jsonb,
        change_summary -> Nullable<Text>,
        created_by -> Uuid,
        created_at -> Timestamp,
    }
}

diesel::table! {
    course_levels (id) {
        id -> Uuid,
        course_id -> Uuid,
        level_code -> Text,
        title -> Text,
        order_index -> Int4,
        metadata -> Nullable<Jsonb>,
        created_at -> Timestamp,
        updated_at -> Timestamp,
        created_by -> Uuid,
    }
}

diesel::table! {
    course_modules (id) {
        id -> Uuid,
        unit_id -> Uuid,
        module_code -> Nullable<Text>,
        title -> Text,
        order_index -> Int4,
        metadata -> Nullable<Jsonb>,
        created_at -> Timestamp,
        updated_at -> Timestamp,
        created_by -> Uuid,
    }
}

diesel::table! {
    course_series (id) {
        id -> Uuid,
        publisher_id -> Uuid,
        key -> Text,
        title -> Text,
        description -> Nullable<Text>,
        language -> Text,
        is_active -> Bool,
        created_at -> Timestamp,
        updated_at -> Timestamp,
        created_by -> Uuid,
    }
}

diesel::table! {
    course_units (id) {
        id -> Uuid,
        level_id -> Uuid,
        unit_code -> Nullable<Text>,
        title -> Text,
        order_index -> Int4,
        metadata -> Nullable<Jsonb>,
        created_at -> Timestamp,
        updated_at -> Timestamp,
        created_by -> Uuid,
    }
}

diesel::table! {
    local_credentials (user_id) {
        user_id -> Uuid,
        password_hash -> Text,
        created_at -> Nullable<Timestamp>,
    }
}

diesel::table! {
    permissions (id) {
        id -> Uuid,
        key -> Text,
    }
}

diesel::table! {
    publishers (id) {
        id -> Uuid,
        key -> Text,
        name -> Text,
        website -> Nullable<Text>,
        created_at -> Timestamp,
        updated_at -> Timestamp,
        created_by -> Uuid,
    }
}

diesel::table! {
    quizlet_cards (id) {
        id -> Uuid,
        set_id -> Uuid,
        position -> Int4,
        term -> Text,
        explanation -> Text,
        image_url -> Nullable<Text>,
        image_alt -> Nullable<Text>,
        image_data -> Nullable<Bytea>,
        image_mime -> Nullable<Text>,
        created_at -> Timestamptz,
    }
}

diesel::table! {
    quizlet_folders (id) {
        id -> Uuid,
        title -> Text,
        owner_id -> Nullable<Uuid>,
        created_at -> Timestamptz,
        updated_at -> Timestamptz,
    }
}

diesel::table! {
    use diesel::sql_types::*;
    use super::sql_types::Tsvector;

    quizlet_sets (id) {
        id -> Uuid,
        slug -> Text,
        title -> Text,
        description -> Nullable<Text>,
        language_level -> Nullable<Text>,
        textbook_id -> Nullable<Uuid>,
        folder_id -> Nullable<Uuid>,
        owner_id -> Nullable<Uuid>,
        created_at -> Timestamptz,
        updated_at -> Timestamptz,
        source_url -> Nullable<Text>,
        title_tsv -> Nullable<Tsvector>,
    }
}

diesel::table! {
    role_permissions (role_id, permission_id) {
        role_id -> Uuid,
        permission_id -> Uuid,
    }
}

diesel::table! {
    roles (id) {
        id -> Uuid,
        key -> Text,
        name -> Text,
    }
}

diesel::table! {
    sessions (id) {
        id -> Uuid,
        sid_hash -> Text,
        user_id -> Uuid,
        created_at -> Timestamptz,
        last_seen_at -> Timestamptz,
        expires_at -> Timestamptz,
        revoked_at -> Nullable<Timestamptz>,
    }
}

diesel::table! {
    subject_content_items (subject_id, content_id) {
        subject_id -> Uuid,
        content_id -> Uuid,
    }
}

diesel::table! {
    subjects (id) {
        id -> Uuid,
        name -> Text,
        description -> Nullable<Text>,
        color -> Text,
        icon -> Nullable<Text>,
        order -> Int4,
        is_active -> Bool,
        created_at -> Timestamp,
        updated_at -> Timestamp,
        created_by -> Uuid,
    }
}

diesel::table! {
    user_roles (user_id, role_id) {
        user_id -> Uuid,
        role_id -> Uuid,
        assigned_by -> Nullable<Uuid>,
        assigned_at -> Timestamp,
    }
}

diesel::table! {
    users (id) {
        id -> Uuid,
        auth0_id -> Text,
        email -> Nullable<Text>,
        created_at -> Nullable<Timestamp>,
        username -> Nullable<Text>,
        full_name -> Nullable<Text>,
        gender -> Nullable<Text>,
    }
}

diesel::joinable!(audit_log -> users (actor_id));
diesel::joinable!(content_items -> users (created_by));
diesel::joinable!(content_versions -> content_items (content_id));
diesel::joinable!(content_versions -> users (created_by));
diesel::joinable!(course_levels -> course_series (course_id));
diesel::joinable!(course_levels -> users (created_by));
diesel::joinable!(course_modules -> course_units (unit_id));
diesel::joinable!(course_modules -> users (created_by));
diesel::joinable!(course_series -> publishers (publisher_id));
diesel::joinable!(course_series -> users (created_by));
diesel::joinable!(course_units -> course_levels (level_id));
diesel::joinable!(course_units -> users (created_by));
diesel::joinable!(local_credentials -> users (user_id));
diesel::joinable!(publishers -> users (created_by));
diesel::joinable!(quizlet_cards -> quizlet_sets (set_id));
diesel::joinable!(quizlet_sets -> quizlet_folders (folder_id));
diesel::joinable!(role_permissions -> permissions (permission_id));
diesel::joinable!(role_permissions -> roles (role_id));
diesel::joinable!(sessions -> users (user_id));
diesel::joinable!(subject_content_items -> content_items (content_id));
diesel::joinable!(subject_content_items -> subjects (subject_id));
diesel::joinable!(subjects -> users (created_by));
diesel::joinable!(user_roles -> roles (role_id));

diesel::allow_tables_to_appear_in_same_query!(
    audit_log,
    content_items,
    content_versions,
    course_levels,
    course_modules,
    course_series,
    course_units,
    local_credentials,
    permissions,
    publishers,
    quizlet_cards,
    quizlet_folders,
    quizlet_sets,
    role_permissions,
    roles,
    sessions,
    subject_content_items,
    subjects,
    user_roles,
    users,
);
