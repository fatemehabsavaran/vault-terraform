# variables.tf

variable "vault_address" {
  description = "The address of the Vault server"
  type        = string
}

variable "vault_token" {
  description = "The Vault authentication token"
  type        = string
  sensitive   = true
}

variable "users" {
  description = "A map of users to be created as entities in Vault"
  type = map(object({
    email = string
    role  = string
    policies = list(string)
  }))
}

