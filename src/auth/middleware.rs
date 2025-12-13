use axum::{
    extract::{State,Request},
    http::StatusCode,
    middleware::Next,
    response::Response,
};

use diesel::SelectableHelper;
use diesel::ExpressionMethods;
use diesel::QueryDsl;
use diesel::RunQueryDsl;
use diesel::OptionalExtension;

use tower_cookies::Cookies;
use serde::Deserialize;
use jsonwebtoken::{decode, decode_header, Algorithm, Validation};
use crate::auth::jwks::{update_jwks, get_key};
use crate::models::{User, NewUser};
use crate::schema::users::dsl::*;
use uuid::Uuid;

use crate::AppState;

#[derive(Debug, Deserialize)]
pub struct Claims {
    pub sub: String,
    pub email: Option<String>,
    pub iss: String,
    pub aud: String,
    pub exp: usize,
}

#[derive(Clone, Debug)]
pub struct AuthenticatedUser {
    pub id: Uuid,
    pub auth0_id: String,
    pub email: Option<String>,
}

pub async fn auth_middleware(
    State(state): State<AppState>,
    cookies: Cookies,
    mut req: Request,
    next: Next,
) -> Result<Response, StatusCode> {

    let token = cookies
        .get("access_token")
        .map(|c| c.value().to_string())
        .ok_or(StatusCode::UNAUTHORIZED)?;

    let head = decode_header(&token).map_err(|_| StatusCode::UNAUTHORIZED)?;
    let kid = head.kid.ok_or(StatusCode::UNAUTHORIZED)?;

    let mut key = get_key(&state.jwks, &kid).await;

    if key.is_none() {
        update_jwks(&state.jwks).await;
        key = get_key(&state.jwks, &kid).await;
    }

    let key = key.ok_or(StatusCode::UNAUTHORIZED)?;

    let mut validation = Validation::new(Algorithm::RS256);
    validation.set_issuer(&[format!("https://{}/", std::env::var("AUTH0_DOMAIN").unwrap())]);
    validation.set_audience(&[std::env::var("AUTH0_AUDIENCE").unwrap().as_str()]);

    let claims = decode::<Claims>(&token, &key, &validation)
        .map_err(|_| StatusCode::UNAUTHORIZED)?
        .claims;

    // 5. Find or create local user
    let user = {
        let mut conn = state.pool
            .get()
            .map_err(|_| StatusCode::SERVICE_UNAVAILABLE)?;

        let found = users
            .filter(auth0_id.eq(&claims.sub))
            .select(User::as_select())
            .first::<User>(&mut conn)
            .optional()
            .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

        match found {
            Some(u) => u,
            None => diesel::insert_into(users)
                .values(NewUser {
                    auth0_id: claims.sub.clone(),
                    email: claims.email.clone(),
                })
                .returning(User::as_select())
                .get_result::<User>(&mut conn)
                .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?,
        }
    };
    // 6. Put user into request context
    req.extensions_mut().insert(AuthenticatedUser {
        id: user.id,
        auth0_id: user.auth0_id,
        email: user.email,
    });

    Ok(next.run(req).await)
}
