// @generated automatically by Diesel CLI.

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
diesel::joinable!(local_credentials -> users (user_id));
diesel::joinable!(role_permissions -> permissions (permission_id));
diesel::joinable!(role_permissions -> roles (role_id));
diesel::joinable!(sessions -> users (user_id));
diesel::joinable!(user_roles -> roles (role_id));

diesel::allow_tables_to_appear_in_same_query!(
    audit_log,
    content_items,
    content_versions,
    local_credentials,
    permissions,
    role_permissions,
    roles,
    sessions,
    user_roles,
    users,
);
