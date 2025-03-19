output "public_ip_id" {
  description = "The ID of the public IP address"
  value       = azurerm_public_ip.public_ip.id
}

output "public_ip_name" {
  description = "The name of the public IP address"
  value       = azurerm_public_ip.public_ip.name
}

output "nat_gateway_id" {
  description = "The ID of the NAT gateway"
  value       = azurerm_nat_gateway.natgw.id
}

output "nat_gateway_name" {
  description = "The name of the NAT gateway"
  value       = azurerm_nat_gateway.natgw.name
}

output "nat_gateway_public_ip_association_id" {
  description = "The ID of the NAT gateway public IP association"
  value       = azurerm_nat_gateway_public_ip_association.example.id
}