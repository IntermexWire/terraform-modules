output "container_app_environment_id" {
  value       = azurerm_container_app_environment.cae.id
  description = "The ID of the Container App Environment."
}

output "container_app_environment_name" {
  value       = azurerm_container_app_environment.cae.name
  description = "The name of the Container App Environment."
}