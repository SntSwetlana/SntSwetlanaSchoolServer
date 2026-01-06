use askama::Template;

#[derive(Template)]
#[template(path = "teacher_index.html")]
pub struct TeacherIndexTemplate{
    pub current_user: String,
}