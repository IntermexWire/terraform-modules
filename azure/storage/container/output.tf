output "name" {
  description = "The name of the Storage Container"
  value       = azurerm_storage_container.container.name
}

output "id" {
  description = "The Resource Manager ID of the Storage Container"
  value       = azurerm_storage_container.container.id
}