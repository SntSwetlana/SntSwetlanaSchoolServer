use diesel::prelude::*;
use diesel_json::Json;

use crate::schema::audit_log;
use uuid::Uuid;


#[derive(Insertable)]
#[diesel(table_name = audit_log)]
pub struct NewAuditEvent {
    actor_id: Option<uuid::Uuid>,
    action: String,
    entity_type: String,
    entity_id: uuid::Uuid,
    metadata: Option<Json<serde_json::Value>>,
}

pub fn write_audit(
    conn: &mut PgConnection,
    actor_id: Option<uuid::Uuid>,
    action: &str,
    entity_type: &str,
    entity_id: uuid::Uuid,
    metadata: Option<serde_json::Value>,
) -> Result<(), diesel::result::Error> {
    diesel::insert_into(audit_log::table)
        .values(NewAuditEvent {
            actor_id,
            action: action.to_string(),
            entity_type: entity_type.to_string(),
            entity_id,
            metadata: metadata.map(Json),
        })
        .execute(conn)?;
    Ok(())
}
