variable "location" {
  type        = string
  description = "The supported Azure location where the resource exists"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the resource"
}

variable "key_vault_name" {
  type        = string
  description = "The name of the Key Vault resource"
}

variable "tenant_id" {
  type        = string
  description = "The AAD tenant ID that should be used for authenticating requests to the key vault."
}

variable "key_vault_sku" {
  type        = string
  description = "The Name of the SKU used for this Key Vault"
  default     = "standard"
}

variable "deployment_enabled" {
  type        = bool
  default     = false
  description = "Are Virtual Machines are permitted to retrieve certificates stored as secrets from the key vault?"
}

variable "disk_encryption_enabled" {
  type        = bool
  default     = false
  description = "Is Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys?"
}

variable "template_enabled" {
  type        = bool
  default     = false
  description = "Is Azure Resource Manager is permitted to retrieve secrets from the key vault?"
}

variable "enable_rbac_authorization" {
  type        = bool
  default     = false
  description = "Specify whether Azure Key Vault uses Role Based Access Control (RBAC) for authorization of data actions."
}

variable "bypass" {
  type        = string
  default     = "AzureServices"
  description = "Specifies which traffic can bypass the network rules"
}

variable "ip_rules" {
  type        = list(any)
  default     = []
  description = "One or more IP Addresses, or CIDR Blocks which should be able to access the Key Vault"
}

variable "subnet_ids" {
  type        = list(any)
  default     = []
  description = "One or more Subnet ID's which should be able to access this Key Vault"
}

variable "soft_delete_retention_days" {
  type        = number
  description = "Number of days to allow the recovery of deleted Key Vaults and objects"
  default     = 7
}
