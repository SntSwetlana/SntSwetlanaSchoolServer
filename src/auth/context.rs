use std::collections::HashSet;

#[derive(Clone, Debug)]
pub struct AuthContext {
    pub user_id: uuid::Uuid,
    pub roles: Vec<String>,
    pub permissions: HashSet<String>,
}

impl AuthContext {
    pub fn has_role(&self, r: &str) -> bool {
        self.roles.iter().any(|x| x == r)
    }
    pub fn has_perm(&self, p: &str) -> bool {
        self.permissions.contains(p)
    }
}
