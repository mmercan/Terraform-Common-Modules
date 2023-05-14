resource "azurerm_key_vault_certificate" "keyvaltcertificate" {
  name            = var.key_vault_certificate_name
  key_vault_id    = var.key_vault_id
  certificate {
    contents = filebase64(var.key_vault_certificate_location)
    password = var.key_vault_certificate_password
  }
}
