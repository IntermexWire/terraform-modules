# Storage Account Outputs

output "id" {
  description = "The ID of the storage account"
  value       = azurerm_storage_account.this.id
}

output "name" {
  description = "The name of the storage account"
  value       = azurerm_storage_account.this.name
}

output "primary_location" {
  description = "The primary location of the storage account"
  value       = azurerm_storage_account.this.primary_location
}

output "secondary_location" {
  description = "The secondary location of the storage account"
  value       = azurerm_storage_account.this.secondary_location
}

output "primary_blob_endpoint" {
  description = "The endpoint URL for blob storage in the primary location"
  value       = azurerm_storage_account.this.primary_blob_endpoint
}

output "secondary_blob_endpoint" {
  description = "The endpoint URL for blob storage in the secondary location"
  value       = azurerm_storage_account.this.secondary_blob_endpoint
}

output "primary_access_key" {
  description = "The primary access key for the storage account"
  value       = azurerm_storage_account.this.primary_access_key
  sensitive   = true
}

output "secondary_access_key" {
  description = "The secondary access key for the storage account"
  value       = azurerm_storage_account.this.secondary_access_key
  sensitive   = true
}

output "primary_connection_string" {
  description = "The connection string associated with the primary location"
  value       = azurerm_storage_account.this.primary_connection_string
  sensitive   = true
}

output "secondary_connection_string" {
  description = "The connection string associated with the secondary location"
  value       = azurerm_storage_account.this.secondary_connection_string
  sensitive   = true
}

output "containers" {
  description = "Storage containers information"
  value = {
    for k, v in azurerm_storage_container.containers : k => {
      id   = v.id
      name = v.name
      url  = "${azurerm_storage_account.this.primary_blob_endpoint}${v.name}"
    }
  }
}

output "lifecycle_policy_id" {
  description = "The ID of the lifecycle management policy"
  value       = try(azurerm_storage_management_policy.lifecycle[0].id, null)
}

output "sas_policy" {
  description = "SAS policy configuration"
  value       = var.sas_policy
  sensitive   = true
}