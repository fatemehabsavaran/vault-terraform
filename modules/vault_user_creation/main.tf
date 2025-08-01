# modules/vault_user_creation/main.tf

resource "vault_identity_entity" "user" {
  for_each = var.users

  name = each.key
  policies = each.value.policies
  metadata = {
    email = each.value.email
    role  = each.value.role
  }
}

resource "vault_identity_entity_alias" "user_alias" {
  for_each = var.users

  name            = each.key                  
  mount_accessor  = "auth_oidc_2517c611"                     
  canonical_id    = vault_identity_entity.user[each.key].id  
}

