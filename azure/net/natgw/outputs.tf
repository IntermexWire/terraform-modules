output "name" {
  description = "The name of the NAT gateway"
  value       = var.natgw_enabled ? azurerm_nat_gateway.natgw[0].name : null
}

output "id" {
  description = "The ID of the NAT gateway"
  value       = var.natgw_enabled ? azurerm_nat_gateway.natgw[0].id : null
}


output "resource_group_name" {
  description = "The name of the resource group in which the storage account is located"
  value       = var.natgw_enabled ? azurerm_nat_gateway.natgw[0].resource_group_name : null
  
}

output "location" {
  description = "The location of the storage account"
  value       = var.natgw_enabled ? azurerm_nat_gateway.natgw[0].location : null
  
}

output "public_ip_id" {
  description = "The ID of the public IP address"
  value       = var.natgw_enabled ? azurerm_public_ip.public_ip[0].id : null
}

output "public_ip_name" {
  description = "The name of the public IP address"
  value       = var.natgw_enabled ? azurerm_public_ip.public_ip[0].name : null
}

output "nat_gateway_public_ip_association_id" {
  description = "The ID of the NAT gateway public IP association"
  value       = var.natgw_enabled ? azurerm_nat_gateway_public_ip_association.natgw_pip_assoc[0].id : null
}

output "public_ip" {
  description = "The public IP address of the NAT gateway."
  value       = var.natgw_enabled ? azurerm_public_ip.public_ip[0].ip_address : null
}