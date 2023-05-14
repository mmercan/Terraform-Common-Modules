variable "key_vault_id" {
    type        = string
    description = "The id of the Key Vault resource"
}

variable "tenant_id" {
    type        = string
    description = "The AAD tenant ID that should be used for authenticating requests to the key vault."
}

variable "key_permissions" {
  type        = list
  default     = ["Get","List"]
  description = "List of key permissions"
}

variable "secret_permissions" {
  type        = list
  default     = ["Get","List"]
  description = "List of secret permissions"
}

variable "certificate_permissions" {
  type        = list
  default     = ["Get","List"]
  description = "List of certificate permissions"
}

variable "object_id" {
    type        = string
    description = "The object ID of a user, service principal or security group in the Azure Active Directory tenant for the vault. The object ID must be unique for the list of access policies."
}
