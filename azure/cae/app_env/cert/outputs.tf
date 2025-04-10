output "id" {
  description = "The ID of the created certificate."
  value       = azurerm_container_app_environment_certificate.cae_cert.id
}

output "name" {
  description = "The name of the created certificate."
  value       = azurerm_container_app_environment_certificate.cae_cert.name
}
