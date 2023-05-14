variable "location" {
  type        = string
  description = "The Azure region where the storage account is created"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group for this storage account"
}

variable "storage_account_name" {
  type        = string
  description = "The storage account name"
}

variable "storage_type" {
  type        = string
  description = "The storage account type (eg StorageV2)"
  default     = "StorageV2"
}

variable "account_tier" {
  type        = string
  description = "The tier of storage account (eg Standard)"
  default     = "Standard"
}

variable "replication" {
  type        = string
  description = "The replication type for the storage account (eg RAGRS)"
  default     = "LRS"
}

variable "access_tier" {
  type        = string
  description = "The access tier of the storage account (eg hot/cool)"
  default     = "Hot"
}

variable "hns_enabled" {
  type        = bool
  description = "Is Heirarchical Namespace enabled?"
  default     = false
}

variable "public_nested_items" {
  type        = bool
  description = "Allow or disallow nested items within this Account to opt into being public"
  default     = false
}

variable "infrastructure_encryption_enabled" {
  type        = bool
  description = "Is infrastructure encryption enabled?"
  default     = true
}

variable "allow_public_access" {
  type        = bool
  description = "Allow public access to the storage account or not. Default is private access to the IPs and/or subnets in ip_rules and subnet_ids."
  default     = false
}

variable "ip_rules" {
  type        = list(string)
  description = "The list of IP's for whitelisting the firewall"
  default     = []
}

variable "subnet_ids" {
  type        = list(string)
  description = "The list of Virtual Network subnet ID's for whitelisting"
  default     = []
}
