# outputs.tf
output "vault_address" {
  description = "The address of the Vault server"
  value = var.vault_address
}

output "vault_user_entity_ids" {
  description = "A map of user names to their corresponding Vault entity IDs"
  value = module.vault_user_creation.user_entity_ids
}
