use askama::Template;

#[derive(Template)]
#[template(path = "subjects/index.html")]
pub struct SubjectsIndexTemplate {
    pub current_user: String,
}
