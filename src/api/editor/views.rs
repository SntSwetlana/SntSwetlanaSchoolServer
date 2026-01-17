use askama::Template;

#[derive(Template)]
#[template(path = "editor_index.html")]
pub struct EditorIndexTemplate{
    pub current_user: String,
}