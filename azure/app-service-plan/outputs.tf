output "ids" {
  value = {for k, v in azurerm_service_plan.service_plan : k => v.id}
}

output "kinds" {
  value = {for k, v in azurerm_service_plan.service_plan : k => v.kind}
}

output "names" {
  value = {for k, v in azurerm_service_plan.service_plan : k => v.name}
}