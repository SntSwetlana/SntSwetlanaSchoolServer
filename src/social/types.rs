use serde::{Deserialize, Serialize};

#[derive(Debug, Clone, Copy, Serialize, Deserialize, PartialEq, Eq)]
pub enum SocialProvider {
    Telegram,
    Vk,
    Instagram,
    Threads,
}

impl SocialProvider {
    pub fn as_str(self) -> &'static str {
        match self {
            Self::Telegram => "telegram",
            Self::Vk => "vk",
            Self::Instagram => "instagram",
            Self::Threads => "threads",
        }
    }

    pub fn from_db(s: &str) -> Option<Self> {
        match s {
            "telegram" => Some(Self::Telegram),
            "vk" => Some(Self::Vk),
            "instagram" => Some(Self::Instagram),
            "threads" => Some(Self::Threads),
            _ => None,
        }
    }
}

#[derive(Debug, Clone, Copy, Serialize, Deserialize, PartialEq, Eq)]
pub enum SocialJobStatus {
    Pending,
    Scheduled,
    Processing,
    Posted,
    Failed,
    Cancelled,
}

impl SocialJobStatus {
    pub fn as_str(self) -> &'static str {
        match self {
            Self::Pending => "pending",
            Self::Scheduled => "scheduled",
            Self::Processing => "processing",
            Self::Posted => "posted",
            Self::Failed => "failed",
            Self::Cancelled => "cancelled",
        }
    }
}