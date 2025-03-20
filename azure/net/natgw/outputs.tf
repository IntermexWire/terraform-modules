output "public_ip_id" {
  description = "The ID of the public IP address"
  value       = var.enable_nat_gateway ? azurerm_public_ip.public_ip[0].id : null
}

output "public_ip_name" {
  description = "The name of the public IP address"
  value       = var.enable_nat_gateway ? azurerm_public_ip.public_ip[0].name : null
}

output "nat_gateway_id" {
  description = "The ID of the NAT gateway"
  value       = var.enable_nat_gateway ? azurerm_nat_gateway.natgw[0].id : null
}

output "nat_gateway_name" {
  description = "The name of the NAT gateway"
  value       = var.enable_nat_gateway ? azurerm_nat_gateway.natgw[0].name : null
}

output "nat_gateway_public_ip_association_id" {
  description = "The ID of the NAT gateway public IP association"
  value       = var.enable_nat_gateway ? azurerm_nat_gateway_public_ip_association.example[0].id : null
}