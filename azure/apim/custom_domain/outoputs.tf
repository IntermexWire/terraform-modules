output "id" {
  description = "The ID of the API Management Custom Domain."
  value       = azurerm_api_management_custom_domain.hostname.id
}

output "developer_portal_custom_domain" {
  description = "The custom domain for the API Management developer portal."
  value       = azurerm_api_management_custom_domain.hostname.developer_portal
}

output "management_custom_domain" {
  description = "The custom domain for the API Management management endpoint."
  value       = azurerm_api_management_custom_domain.hostname.management
}

output "scm_custom_domain" {
  description = "The custom domain for the API Management SCM endpoint."
  value       = azurerm_api_management_custom_domain.hostname.scm
}