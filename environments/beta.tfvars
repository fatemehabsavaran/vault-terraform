##### beta vars #####

####### Connection string for vault provider #######
vault_address = "vault address"
vault_token   = "your-vault-token"#### please export the token in your shell

####### User Entities ######
# environments/beta.tfvars

users = {
  "sample user" = {
    email = ""
    role  = "admin"
    policies = ["sampleuser"]
  }

  "sample user" = {
    email = ""
    role  = "admin"
    policies = ["sampleuser2nd"]
  }

}