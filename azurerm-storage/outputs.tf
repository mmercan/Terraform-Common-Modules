output "id" {
  description = "The ID of the Storage Account"
  value       = azurerm_storage_account.storage.id
}

output "primary_access_key" {
  description = "The primary access key of the storage account"
  value       = azurerm_storage_account.storage.primary_access_key
  sensitive   = true
}

output "name" {
  description = "The storage account name"
  value       = azurerm_storage_account.storage.name
}

output "primary_connection_string" {
  description = "The connection string associated with the primary location"
  value       = azurerm_storage_account.storage.primary_connection_string
  sensitive   = true
}
