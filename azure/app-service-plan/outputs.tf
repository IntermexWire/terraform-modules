output "app_service_plan_name" {
  description = "The Endpoint URL of the Cognitive Services Account."
  value       = azurerm_service_plan.app_service_plan.name
}

output "app_service_id" {
  description = "The ID of the Azure Web App."
  value       = azurerm_service_plan.app_service_plan.id
}