output "name" {
  description = "The name of the storage account"
  value       = azurerm_storage_account.sa.name
}

output "primary_endpoint" {
  description = "The primary endpoint for the storage account"
  value       = azurerm_storage_account.sa.primary_blob_endpoint
}

output "primary_access_key" {
  description = "The primary access key for the storage account"
  value       = azurerm_storage_account.sa.primary_access_key
}

output "primary_connection_string" {
  description = "The primary connection string for the storage account"
  value       = azurerm_storage_account.sa.primary_connection_string
}