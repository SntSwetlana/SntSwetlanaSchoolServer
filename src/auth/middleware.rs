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
use axum::extract::Extension;

use tower_cookies::Cookies;
use serde::Deserialize;
use jsonwebtoken::{decode, decode_header, Algorithm, Validation};
use crate::auth::jwks::{update_jwks, get_key};
use crate::models::{User, NewUser};
use crate::schema::users::dsl::*;
use uuid::Uuid;
use std::collections::HashSet;
use diesel::prelude::*;
use crate::schema::{user_roles, roles, role_permissions, permissions};


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

#[derive(Clone, Debug)]
pub struct AuthContext {
    pub user_id: uuid::Uuid,
    pub roles: Vec<String>,
    pub permissions: HashSet<String>,
}

impl AuthContext {
    pub fn has_role(&self, r: &str) -> bool {
        self.roles.iter().any(|x| x == r)
    }
    pub fn has_perm(&self, p: &str) -> bool {
        self.permissions.contains(p)
    }
}

pub async fn admin_only(Extension(ctx): Extension<AuthContext>) -> StatusCode {
    if !ctx.has_perm("roles.assign") { return StatusCode::FORBIDDEN; }
    StatusCode::OK
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

    let ctx = {
        let mut conn = state.pool.get().map_err(|_| StatusCode::SERVICE_UNAVAILABLE)?;
        load_auth_context(&mut conn, user.id).map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?
    };

    req.extensions_mut().insert(ctx);

    Ok(next.run(req).await)
}

fn load_auth_context(conn: &mut PgConnection, uid: uuid::Uuid) -> Result<AuthContext, diesel::result::Error> {
    // роли пользователя
    let role_keys: Vec<String> = user_roles::table
        .inner_join(roles::table.on(roles::id.eq(user_roles::role_id)))
        .filter(user_roles::user_id.eq(uid))
        .select(roles::key)
        .load(conn)?;

    // permissions через роли
    let perm_keys: Vec<String> = user_roles::table
        .inner_join(role_permissions::table.on(role_permissions::role_id.eq(user_roles::role_id)))
        .inner_join(permissions::table.on(permissions::id.eq(role_permissions::permission_id)))
        .filter(user_roles::user_id.eq(uid))
        .select(permissions::key)
        .distinct()
        .load(conn)?;

    Ok(AuthContext {
        user_id: uid,
        roles: role_keys,
        permissions: perm_keys.into_iter().collect::<HashSet<_>>(),
    })
}