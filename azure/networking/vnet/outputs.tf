output "id" {
  description = "The ID of the Virtual Network."
  value       = { for k, v in azurerm_virtual_network.vnet : k => v.id }
}

output "name" {
  description = "The name of the Virtual Network."
  value       = { for k, v in azurerm_virtual_network.vnet : k => v.name }
}

output "location" {
  description = "The location of the Virtual Network."
  value       = { for k, v in azurerm_virtual_network.vnet : k => v.location }
}

output "address_space" {
  description = "The address space of the vnet"
  value       = var.address_space
}