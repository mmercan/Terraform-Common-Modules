output "id" {
  description = "The ID of the Key Vault"
  value       = azurerm_key_vault.keyvault.id
}

output "vault_uri" {
  description = "The URI of the Key Vault, used for performing operations on keys and secrets"
  value       = azurerm_key_vault.keyvault.vault_uri
}
