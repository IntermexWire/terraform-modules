output "id" {
  value       = azurerm_application_insights.appi.id
  description = "The ID of the Application Insights instance"
}

output "instrumentation_key" {
  value       = azurerm_application_insights.appi.instrumentation_key
  description = "The instrumentation key of the Application Insights instance"
}
