use askama::Template;

#[derive(Template)]
#[template(path = "tutor_index.html")]
pub struct TutorIndexTemplate{
    pub current_user: String,
}