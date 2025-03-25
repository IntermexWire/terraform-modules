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

output "nfsv3_enabled" {
  description = "Indicates if NFSv3 is enabled for the storage account"
  value       = azurerm_storage_account.sa.nfsv3_enabled
}

output "sftp_enabled" {
  description = "Indicates if SFTP is enabled for the storage account"
  value       = azurerm_storage_account.sa.sftp_enabled
}

output "custom_domain" {
  description = "The custom domain configuration for the storage account"
  value       = azurerm_storage_account.sa.custom_domain
}

output "static_website" {
  description = "The static website configuration for the storage account"
  value       = azurerm_storage_account.sa.static_website
}

output "network_rules" {
  description = "The network rules configuration for the storage account"
  value = {
    default_action             = azurerm_storage_account.sa.network_rules[0].default_action
    ip_rules                   = azurerm_storage_account.sa.network_rules[0].ip_rules
    virtual_network_subnet_ids = azurerm_storage_account.sa.network_rules[0].virtual_network_subnet_ids
  }
}

output "public_network_access_enabled" {
  description = "Indicates if public network access is enabled for the storage account"
  value       = azurerm_storage_account.sa.public_network_access_enabled
}