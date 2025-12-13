use std::{collections::HashMap, sync::Arc};
use tokio::sync::RwLock;
use jsonwebtoken::DecodingKey;
use reqwest::Client;

#[derive(Clone)]
pub struct JwksCache {
    pub keys: Arc<RwLock<HashMap<String, DecodingKey>>>,
}

impl JwksCache {
    pub fn new() -> Self {
        Self {
            keys: Arc::new(RwLock::new(HashMap::new())),
        }
    }
}

pub async fn update_jwks(cache: &JwksCache) {
    let domain = std::env::var("AUTH0_DOMAIN").unwrap();
    let url = format!("https://{}/.well-known/jwks.json", domain);

    if let Ok(resp) = Client::new().get(url).send().await {
        if let Ok(json) = resp.json::<serde_json::Value>().await {
            let mut keys = cache.keys.write().await;
            keys.clear();

            if let Some(arr) = json["keys"].as_array() {
                for k in arr {
                    if let (Some(kid), Some(n), Some(e)) =
                        (k["kid"].as_str(), k["n"].as_str(), k["e"].as_str())
                    {
                        if let Ok(dec) = DecodingKey::from_rsa_components(n, e) {
                            keys.insert(kid.to_string(), dec);
                        }
                    }
                }
            }
        }
    }
}

pub async fn get_key(cache: &JwksCache, kid: &str) -> Option<DecodingKey> {
    let keys = cache.keys.read().await;
    keys.get(kid).cloned()
}
