output "id" {
  description = "The ID of the Subnet."
  value       = { for k, v in azurerm_subnet.snet : k => v.id }
}

output "name" {
  description = "The name of the Subnet."
  value       = { for k, v in azurerm_subnet.snet : k => v.name }
}

output "address_prefixes" {
  description = "The address prefixes of the subnet"
  value       = var.address_prefixes
}