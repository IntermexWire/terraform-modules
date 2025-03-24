output "id" {
  description = "The ID of the Network Security Group."
  value       = azurerm_network_security_group.nsg.id
}

output "name" {
  description = "The name of the Network Security Group."
  value       = azurerm_network_security_group.nsg.name
}