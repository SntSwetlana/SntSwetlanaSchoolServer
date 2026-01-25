use axum::{extract::State, response::IntoResponse, Json};
use serde::Serialize;
use uuid::Uuid;

use crate::{AppState};
//use crate::db::with_conn; // если у вас есть helper; если нет — покажу ниже

use diesel::prelude::*;
use crate::schema::{publishers, course_series, course_levels, course_units, course_modules};

#[derive(Serialize)]
pub struct ModuleDto {
    pub id: Uuid,
    pub title: String,
    pub order_index: i32,
    pub module_code: Option<String>,
}

#[derive(Serialize)]
pub struct UnitDto {
    pub id: Uuid,
    pub title: String,
    pub order_index: i32,
    pub unit_code: Option<String>,
    pub modules: Vec<ModuleDto>,
}

#[derive(Serialize)]
pub struct LevelDto {
    pub id: Uuid,
    pub level_code: String,
    pub title: String,
    pub order_index: i32,
    pub units: Vec<UnitDto>,
}

#[derive(Serialize)]
pub struct CourseDto {
    pub id: Uuid,
    pub key: String,
    pub title: String,
    pub levels: Vec<LevelDto>,
}

#[derive(Serialize)]
pub struct PublisherDto {
    pub id: Uuid,
    pub key: String,
    pub name: String,
    pub courses: Vec<CourseDto>,
}

pub async fn list_publishers_tree(State(state): State<AppState>) -> impl IntoResponse {
    let pool = state.pool.clone();

    let result = tokio::task::spawn_blocking(move || {
        let mut conn = pool.get().expect("db pool");

        // 1) Считываем всё плоско (без N+1)
        let pubs = publishers::table
            .select((publishers::id, publishers::key, publishers::name))
            .order(publishers::name.asc())
            .load::<(Uuid, String, String)>(&mut conn)?;

        let courses = course_series::table
            .select((course_series::id, course_series::publisher_id, course_series::key, course_series::title))
            .filter(course_series::is_active.eq(true))
            .order(course_series::title.asc())
            .load::<(Uuid, Uuid, String, String)>(&mut conn)?;

        let levels = course_levels::table
            .select((course_levels::id, course_levels::course_id, course_levels::level_code, course_levels::title, course_levels::order_index))
            .order(course_levels::order_index.asc())
            .load::<(Uuid, Uuid, String, String, i32)>(&mut conn)?;

        let units = course_units::table
            .select((course_units::id, course_units::level_id, course_units::unit_code, course_units::title, course_units::order_index))
            .order(course_units::order_index.asc())
            .load::<(Uuid, Uuid, Option<String>, String, i32)>(&mut conn)?;

        let modules = course_modules::table
            .select((course_modules::id, course_modules::unit_id, course_modules::module_code, course_modules::title, course_modules::order_index))
            .order(course_modules::order_index.asc())
            .load::<(Uuid, Uuid, Option<String>, String, i32)>(&mut conn)?;

        // 2) Собираем дерево в памяти
        use std::collections::HashMap;

        let mut modules_by_unit: HashMap<Uuid, Vec<ModuleDto>> = HashMap::new();
        for (id, unit_id, module_code, title, order_index) in modules {
            modules_by_unit.entry(unit_id).or_default().push(ModuleDto {
                id,
                title,
                order_index,
                module_code,
            });
        }

        let mut units_by_level: HashMap<Uuid, Vec<UnitDto>> = HashMap::new();
        for (id, level_id, unit_code, title, order_index) in units {
            units_by_level.entry(level_id).or_default().push(UnitDto {
                id,
                title,
                order_index,
                unit_code,
                modules: modules_by_unit.remove(&id).unwrap_or_default(),
            });
        }

        let mut levels_by_course: HashMap<Uuid, Vec<LevelDto>> = HashMap::new();
        for (id, course_id, level_code, title, order_index) in levels {
            levels_by_course.entry(course_id).or_default().push(LevelDto {
                id,
                level_code,
                title,
                order_index,
                units: units_by_level.remove(&id).unwrap_or_default(),
            });
        }

        let mut courses_by_pub: HashMap<Uuid, Vec<CourseDto>> = HashMap::new();
        for (id, publisher_id, key, title) in courses {
            courses_by_pub.entry(publisher_id).or_default().push(CourseDto {
                id,
                key,
                title,
                levels: levels_by_course.remove(&id).unwrap_or_default(),
            });
        }

        let tree: Vec<PublisherDto> = pubs
            .into_iter()
            .map(|(id, key, name)| PublisherDto {
                id,
                key,
                name,
                courses: courses_by_pub.remove(&id).unwrap_or_default(),
            })
            .collect();

        Ok::<_, diesel::result::Error>(tree)
    })
    .await;

    match result {
        Ok(Ok(tree)) => Json(tree).into_response(),
        Ok(Err(_e)) => (axum::http::StatusCode::INTERNAL_SERVER_ERROR, "db error").into_response(),
        Err(_join_err) => (axum::http::StatusCode::INTERNAL_SERVER_ERROR, "join error").into_response(),
    }
}
