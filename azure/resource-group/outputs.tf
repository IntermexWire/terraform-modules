output "name" {
  description = "The name of the resource group"
  value       = var.create ? azurerm_resource_group.rg[0].name : null
}

output "location" {
  description = "The location of the resource group"
  value       = var.create ? azurerm_resource_group.rg[0].location : null
}