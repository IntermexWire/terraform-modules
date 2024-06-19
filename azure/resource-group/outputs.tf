output "names" {
  description = "The names of the resource groups"
  value       = var.create ? [for k, v in azurerm_resource_group.rg : v.name] : null
}

output "locations" {
  description = "The locations of the resource groups"
  value       = var.create ? [for k, v in azurerm_resource_group.rg : v.location] : null
}