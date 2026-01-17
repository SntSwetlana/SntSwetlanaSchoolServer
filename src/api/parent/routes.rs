use axum::response::Html;
use axum::extract::Extension;
use crate:: auth::context::AuthContext;
use crate::parent::views::ParentIndexTemplate;


pub async fn parent_index(
    Extension(ctx): Extension<AuthContext>,
) -> Html<String> {
use crate::parent::views::ParentIndexTemplate;
    let tpl = ParentIndexTemplate {
        current_parent: ctx.user_id.to_string(),
    };
    Html(tpl.render().unwrap())
}

pub async fn students_page(
    Extension(ctx): Extension<AuthContext>,
) -> Html<String> {
    let tpl = ParentIndexTemplate {
        current_parent: ctx.user_id.to_string(),
    };
    Html(tpl.render().unwrap())
}
