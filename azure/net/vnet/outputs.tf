output "id" {
  description = "The VNET id"
  value       = azurerm_virtual_network.vnet.id
}

output "name" {
  description = "The VNET name"
  value       = azurerm_virtual_network.vnet.name
}

output "resource_group_name" {
  description = "The name of the resource group in which the VNET is created in."
  value       = azurerm_virtual_network.vnet.resource_group_name

}

output "location" {
  description = "The location of the VNET"
  value       = azurerm_virtual_network.vnet.location
}

output "address_space" {
  description = "The address space of the VNET"
  value       = azurerm_virtual_network.vnet.address_space
}