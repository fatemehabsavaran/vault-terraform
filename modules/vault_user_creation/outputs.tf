# modules/vault_user_creation/outputs.tf

output "user_entity_ids" {
  description = "A map of user names to their corresponding Vault entity IDs"
  value = { for user, entity in vault_identity_entity.user : user => entity.id }
}
output "user_entity_alias_ids" {
  description = "A map of user names to their corresponding Vault entity alias IDs"
  value = { for user, alias in vault_identity_entity_alias.user_alias : user => alias.id }
}
