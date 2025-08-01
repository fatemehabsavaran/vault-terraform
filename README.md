<<<<<<< HEAD
# vault-terraform
=======
# Vault User & Policy Management with Tofu

This project uses [Terraform](https://developer.hashicorp.com/terraform) to manage users and policies in HashiCorp Vault across multiple environments (`beta`, `prod`).

## 🗂 Project Structure

```
.
├── backend.tf
├── environments
│   ├── beta.tfvars
│   └── prod.tfvars
├── main.tf
├── modules
│   └── vault_user_creation
│       ├── main.tf
│       ├── outputs.tf
│       └── variables.tf
├── outputs.tf
├── policies
│   └── sampleuser
├── providers.tf
├── README.md
├── terraform.tfstate
├── terraform.tfvars
└── variables.tf
```

## Policy Files

All Vault policy definitions are stored inside the `policies/` directory.

Each file defines access capabilities. Example:

```hcl
policies/sampleuser.hcl
path "sampledb/creds/sampledb-dev" {
  capabilities = ["read"]
}
```

## User Configuration

Users are defined per environment (in `*.tfvars` files), like so:

```hcl
users = {
  "fatemeh" = {
    email    = ""
    role     = "admin"
    policies = ["sampleuser", "sampleuser2nd"]
  }
}
```

Each user entry:
- Assigns an alias.
- Specifies their email.
- Assigns a Vault role (`admin`, `reader`, etc.)
- Attaches policy names defined in the `policies/` folder

## Environments

The project supports multiple environments:
- `beta`
- `prod`

Each has its own `.tfvars` file under the `environments/` folder.

## Usage

### 1. Plan

To preview changes before applying:

```bash
terraform plan -var-file=environments/beta.tfvars
```

### 2. Apply

To apply the changes and provision users/policies:

```bash
terraform apply -var-file=environments/beta.tfvars
```

> Replace `beta.tfvars` with `prod.tfvars` to apply changes in the production environment.


>>>>>>> 355b520 (init commit)
