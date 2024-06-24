output "names" {
  description = "The names of the service plans"
  value       = { for k, v in azurerm_service_plan.service_plan : k => v.name }
}

output "ids" {
  description = "The ids of the service plans"
  value       = { for k, v in azurerm_service_plan.service_plan : k => v.id }
}

output "kinds" {
  description = "The kinds of the service plans"
  value       = { for k, v in azurerm_service_plan.service_plan : k => v.kind }
}