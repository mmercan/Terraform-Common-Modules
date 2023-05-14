variable "key_vault_id" {
    type        = string
    description = "The id of the Key Vault resource"
}

variable "key_vault_secret_name" {
    type        = string
    description = "Specifies the name of the Key Vault Secret. Changing this forces a new resource to be created."
}

variable "key_vault_secret_value" {
    type        = string
    description = "Specifies the value of the Key Vault Secret."
}

variable "content_type" {
    type        = string
    default     = null
    description = "Specifies the content type for the Key Vault Secret"
}

variable "expiration_date" {
    type        = string
    default     = null
    description = "Expiration of the secret in UTC datetime (Y-m-d'T'H:M:S'Z')"
}
