use axum::response::Html;
use axum::extract::Extension;
use crate:: auth::context::AuthContext;
use crate::editor::views::EditorIndexTemplate;
use askama::Template;

pub async fn editor_index(
    Extension(ctx): Extension<AuthContext>,
) -> Html<String> {
    let tpl = EditorIndexTemplate {
        current_user: ctx.user_id.to_string(),
    };
    Html(tpl.render().unwrap())
}

pub async fn content_page(
    Extension(ctx): Extension<AuthContext>,
) -> Html<String> {
    let tpl = EditorIndexTemplate {
        current_user: ctx.user_id.to_string(),
    };
    Html(tpl.render().unwrap())
}

