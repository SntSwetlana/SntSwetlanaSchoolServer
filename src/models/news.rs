use chrono::{DateTime, Utc};
use serde::Serialize;
use uuid::Uuid;

#[derive(Debug, Clone, Serialize, diesel::Queryable)]
pub struct NewsPost {
    pub id: Uuid,
    pub kind: String,
    pub title: String,

    pub excerpt: Option<String>,
    pub body: Option<String>,
    pub source: Option<String>,
    pub url: Option<String>,

    pub created_at: DateTime<Utc>,

    pub level: String,
    pub image_url: Option<String>,
    pub phonetic: Option<String>,
    pub is_hot: bool,

    // ВАЖНО: ровно под schema.rs:
    // tags -> Nullable<Array<Nullable<Text>>>
    pub tags: Vec<Option<String>>,
    pub explanation_en: Option<String>,
}

#[derive(Debug, Serialize)]
pub struct NewsListResponse {
    pub items: Vec<NewsPost>,
    // если ты добавляла next_cursor — оставь, иначе удали
    // pub next_cursor: Option<String>,
}