use axum::response::Html;
use axum::extract::Extension;
use crate:: auth::context::AuthContext;
use crate::teacher::views::TeacherIndexTemplate;
use askama::Template;

pub async fn teacher_index(
    Extension(ctx): Extension<AuthContext>,
) -> Html<String> {
    let tpl = TeacherIndexTemplate {
        current_user: ctx.user_id.to_string(),
    };
    Html(tpl.render().unwrap())
}

pub async fn students_page(
    Extension(ctx): Extension<AuthContext>,
) -> Html<String> {
    let tpl = TeacherIndexTemplate {
        current_user: ctx.user_id.to_string(),
    };
    Html(tpl.render().unwrap())
}
