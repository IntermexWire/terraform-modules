output "id" {
  description = "The VNET id"
  value       = azurerm_virtual_network.vnet.id
}

output "name" {
  description = "The VNET name"
  value       = azurerm_virtual_network.vnet.name
}

output "address_space" {
  description = "The address space of the VNET"
  value       = azurerm_virtual_network.vnet.address_space
}