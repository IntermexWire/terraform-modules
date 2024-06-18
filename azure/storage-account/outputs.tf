output "names" {
  description = "The names of the storage accounts"
  value       = { for k, v in azurerm_storage_account.sa : k => v.name }
}

output "primary_access_keys" {
  description = "The primary access keys of the storage accounts"
  value       = { for k, v in azurerm_storage_account.sa : k => v.primary_access_key }
  sensitive   = true
}