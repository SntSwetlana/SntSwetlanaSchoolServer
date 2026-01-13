use diesel::prelude::*;
use sha2::{Digest, Sha256};
use uuid::Uuid;
use time::{OffsetDateTime, Duration};

use crate::schema::{self, sessions};

fn compute_sid_hash(secret: &str, sid: &str) -> String {
    use sha2::{Digest, Sha256};

    let mut h = Sha256::new();
    h.update(secret.as_bytes());
    h.update(sid.as_bytes());
    hex::encode(h.finalize())
}
pub fn new_sid() -> String {
    // Случайный, не угадываемый
    Uuid::new_v4().to_string() + &Uuid::new_v4().to_string()
}

#[derive(Insertable)]
#[diesel(table_name = sessions)]
pub struct NewSessionRow {
    pub sid_hash: String,
    pub user_id: Uuid,
    pub expires_at: chrono::DateTime<chrono::Utc>,
}

pub fn create_session(
    conn: &mut PgConnection,
    secret: &str,
    user_id: Uuid,
    ttl_days: i64,
) -> Result<String, diesel::result::Error> {
    let sid = new_sid();
    let sh = compute_sid_hash(secret, &sid);
    let expires = chrono::Utc::now() + chrono::Duration::days(ttl_days);

    diesel::insert_into(sessions::table)
        .values(NewSessionRow {
            sid_hash: sh,
            user_id,
            expires_at: expires,
        })
        .execute(conn)?;

    Ok(sid)
}

pub fn revoke_session(
    conn: &mut PgConnection,
    secret: &str,
    sid: &str,
) -> Result<(), diesel::result::Error> {
    use crate::schema::sessions::dsl::*;
    let sh = compute_sid_hash(secret, sid);

    diesel::update(sessions.filter(sid_hash.eq(sh)))
        .set(revoked_at.eq(chrono::Utc::now()))
        .execute(conn)?;

    Ok(())
}

pub fn lookup_session_user(
    conn: &mut PgConnection,
    secret: &str,
    sid: &str,
) -> Result<Option<Uuid>, diesel::result::Error> {
    use crate::schema::sessions::dsl::*;

    let sh = compute_sid_hash(secret, sid);

    let uid_opt = sessions
        .filter(sid_hash.eq(&sh))
        .filter(revoked_at.is_null())
        .filter(expires_at.gt(chrono::Utc::now()))
        .select(user_id)
        .first::<Uuid>(conn)
        .optional()?;

    // можно обновлять last_seen_at для активных
    if uid_opt.is_some() {
        diesel::update(sessions.filter(sid_hash.eq(&sh)))
            .set(last_seen_at.eq(chrono::Utc::now()))
            .execute(conn)
            .ok();
    }

    Ok(uid_opt)
}
