output "name" {
  description = "The name of the created certificate."
  value       = azurerm_container_app_custom_domain.app_cert.name
}

output "id" {
  description = "The ID of the created certificate."
  value       = azurerm_container_app_custom_domain.app_cert.container_app_id
}

output "certificate_binding_type" {
  description = "The type of certificate binding."
  value       = azurerm_container_app_custom_domain.app_cert.certificate_binding_type
}