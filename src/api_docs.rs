use utoipa::openapi::security::{ApiKey, ApiKeyValue, SecurityScheme};
use utoipa::{Modify, OpenApi};

pub struct SecurityAddon;

impl Modify for SecurityAddon {
    fn modify(&self, openapi: &mut utoipa::openapi::OpenApi) {
        let components = openapi.components.get_or_insert_with(Default::default);

        components.add_security_scheme(
            "cookieAuth",
            SecurityScheme::ApiKey(ApiKey::Cookie(ApiKeyValue::new("sid"))),
        );
    }
}

#[derive(OpenApi)]
#[openapi(
    info(
        title = "SntSchool API",
        version = "0.1.0",
        description = "API documentation for SntSchool"
    ),
    modifiers(&SecurityAddon),
    paths(
        crate::auth::routes::login,
        crate::auth::routes::logout,
        crate::auth::routes::session_me,
        crate::auth::routes::me_handler
    ),
    components(
        schemas(
            crate::auth::routes::LoginReq,
            crate::auth::routes::LoginResp,
            crate::auth::routes::LogoutResp,
            crate::auth::routes::SessionMeResponse,
            crate::auth::routes::MeResponse,
            crate::auth::routes::ApiError
        )
    ),
    tags(
        (name = "Auth", description = "Authentication endpoints")
    )
)]
pub struct ApiDoc;