output "apim_id" {
  description = "The ID of the API Management Service."
  value       = azurerm_api_management.apim.id
}

output "apim_gateway_url" {
  description = "The Gateway URL of the API Management Service."
  value       = azurerm_api_management.apim.gateway_url
}

output "apim_management_api_url" {
  description = "The Management API URL of the API Management Service."
  value       = azurerm_api_management.apim.management_api_url
}

output "apim_portal_url" {
  description = "The Developer Portal URL of the API Management Service."
  value       = azurerm_api_management.apim.portal_url
}

output "apim_scm_url" {
  description = "The SCM URL of the API Management Service."
  value       = azurerm_api_management.apim.scm_url
}