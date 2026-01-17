use axum::response::Html;
use axum::extract::Extension;
use crate:: auth::context::AuthContext;
use crate::tutor::views::TutorIndexTemplate;
use askama::Template;

pub async fn tutor_index(
    Extension(ctx): Extension<AuthContext>,
) -> Html<String> {
    let tpl = TutorIndexTemplate {
        current_user: ctx.user_id.to_string(),
    };
    Html(tpl.render().unwrap())
}

pub async fn students_page(
    Extension(ctx): Extension<AuthContext>,
) -> Html<String> {
    let tpl = TutorIndexTemplate {
        current_user: ctx.user_id.to_string(),
    };
    Html(tpl.render().unwrap())
}
