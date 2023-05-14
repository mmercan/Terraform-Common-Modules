variable "key_vault_id" {
    type        = string
    description = "The id of the Key Vault resource"
}

variable "key_vault_certificate_name" {
    type        = string
    description = "Specifies the name of the Key Vault Secret. Changing this forces a new resource to be created."
}

variable "key_vault_certificate_location" {
    type        = string
    description = "Specifies the location of the Key Vault Certificate. like : certificate-to-import.pfx"
}

variable "key_vault_certificate_password" {
    type        = string
    description = "Specifies password of the Certificate"
}
