module "vault_user_creation" {
  source = "./modules/vault_user_creation"
  users = var.users
}

locals {
  policy_files = [for file in fileset("policies", "*") : file]
}

resource "vault_policy" "policy" {
  for_each = toset(local.policy_files)

  name   = each.value
  policy = file("policies/${each.value}")
}