##### prod vars #####

####### Connection string for vault provider #######
vault_address = "vault address"
vault_token   = "your-vault-token" #### please export the token in your shell 


####### User Entities ######
# environments/prod.tfvars

users = {
  "" = {
    email = ""
    role  = "admin"
    policies = [""]
  }
}
