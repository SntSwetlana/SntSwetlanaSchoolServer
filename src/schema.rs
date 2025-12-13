// @generated automatically by Diesel CLI.

diesel::table! {
    users (id) {
        id -> Uuid,
        auth0_id -> Text,
        email -> Nullable<Text>,
        created_at -> Nullable<Timestamp>,
    }
}
