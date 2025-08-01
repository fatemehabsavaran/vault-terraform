# modules/vault_user_creation/variables.tf

variable "users" {
  description = "A map of users to be created as entities in Vault"
  type = map(object({
    email = string
    role  = string
    policies = list(string)
  }))
}
