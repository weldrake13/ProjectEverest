variable "vault_approle_role" {
  description = "approle role_id used for vault"
  type        = string
}

variable "vault_approle_secret" {
  description = "vault approle secret id"
  type        = string
  sensitive   = true
}

variable "vault_address" {
  description = "vault URL to login with"
  type        = string
  default     = "https://vault-dev-wsp-poc-public-vault-54e9fb45.2cc7f94d.z1.hashicorp.cloud:8200"
}

variable "environment" {
  description = "Deployment Environment"
  type        = string
  default     = "dev"
}