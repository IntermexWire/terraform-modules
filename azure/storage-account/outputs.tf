output "storage_account_id" {
  description = "The ID of the storage account."
  value       = azurerm_storage_account.storage_account.id
}

output "storage_account_primary_connection_string" {
  description = "The primary connection string for the storage account."
  value       = azurerm_storage_account.storage_account.primary_connection_string
}
