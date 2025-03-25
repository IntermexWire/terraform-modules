output "id" {
  description = "The subnet ID."
  value       = azurerm_subnet.snet.id
}

output "name" {
  description = "The name of the subnet."
  value       = azurerm_subnet.snet.name
}

output "resource_group_name" {
  description = "The name of the resource group in which the subnet is created."
  value       = azurerm_subnet.snet.resource_group_name
}

output "virtual_network_name" {
  description = "The name of the virtual network in which the subnet is created."
  value       = azurerm_subnet.snet.virtual_network_name
}

output "address_prefixes" {
  description = "The address prefixes for the subnet."
  value       = azurerm_subnet.snet.address_prefixes
}

output "delegation" {
  description = "The delegation configuration for the subnet."
  value       = azurerm_subnet.snet.delegation
}

output "service_endpoints" {
  description = "The service endpoints configured for the subnet."
  value       = azurerm_subnet.snet.service_endpoints
}

output "natgw_enabled" {
  description = "Indicates if the NAT gateway is enabled for the subnet."
  value       = var.natgw_enabled
}

output "nat_gateway_id" {
  description = "The ID of the NAT gateway associated with the subnet."
  value       = var.nat_gateway_id
}