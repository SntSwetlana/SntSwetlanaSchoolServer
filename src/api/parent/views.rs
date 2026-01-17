use askama::Template;

#[derive(Template)]
#[template(path = "parent_index.html")]
pub struct ParentIndexTemplate{
    pub current_parent: String,
}