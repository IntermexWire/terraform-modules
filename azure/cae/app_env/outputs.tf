output "name" {
  value       = azurerm_container_app_environment.cae.name
  description = "The name of the Container App Environment."
}

output "id" {
  value       = azurerm_container_app_environment.cae.id
  description = "The ID of the Container App Environment."
}

output "resource_group_name" {
  value       = azurerm_container_app_environment.cae.resource_group_name
  description = "The name of the resource group in which the Container App Environment is located."
  
}

output "location" {
  value       = azurerm_container_app_environment.cae.location
  description = "The location of the Container App Environment."
  
}

output "default_domain" {
  value       = azurerm_container_app_environment.cae.default_domain
  description = "The default domain of the Container App Environment."

}

output "custom_domain_verification_id" {
  value       = azurerm_container_app_environment.cae.custom_domain_verification_id
  description = "The ID of the custom domain verification."

}

output "static_ip" {
  value       = azurerm_container_app_environment.cae.static_ip_address
  description = "The static IP address of the Container App Environment."

}

output "infrastructure_resource_group_name" {
  value       = azurerm_container_app_environment.cae.infrastructure_resource_group_name
  description = "The name of the resource group created for the Container App Environment."

}

output "workload_profile" {
  value       = azurerm_container_app_environment.cae.workload_profile
  description = "The workload profile configuration for the Container App Environment."

}
