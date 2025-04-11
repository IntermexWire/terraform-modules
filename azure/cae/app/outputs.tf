output "name" {
  description = "The name of the container app."
  value       = azurerm_container_app.cae_app.name
}

output "resource_group_name" {
  description = "The name of the resource group in which the container app is created."
  value       = azurerm_container_app.cae_app.resource_group_name
}

output "location" {
  description = "The location of the container app."
  value       = azurerm_container_app.cae_app.location
}

output "id" {
  description = "The ID of the container app."
  value       = azurerm_container_app.cae_app.id
}

output "fqdn" {
  description = "The fully qualified domain name (FQDN) of the container app."
  value       = azurerm_container_app.cae_app.ingress[0].fqdn
}

output "latest_revision_fqdn" {
  description = "The FQDN of the latest revision of the container app."
  value       = azurerm_container_app.cae_app.latest_revision_fqdn
}

output "latest_revision_name" {
  description = "The name of the latest revision of the container app."
  value       = azurerm_container_app.cae_app.latest_revision_name
}

output "revision_mode" {
  description = "The revision mode of the container app."
  value       = azurerm_container_app.cae_app.revision_mode
}

output "tags" {
  description = "The tags assigned to the container app."
  value       = azurerm_container_app.cae_app.tags
}

output "container_app_environment_id" {
  description = "The ID of the container app environment."
  value       = azurerm_container_app.cae_app.container_app_environment_id
}

output "workload_profile_name" {
  description = "The workload profile name of the container app."
  value       = azurerm_container_app.cae_app.workload_profile_name
}

output "ingress" {
  description = "The ingress configuration of the container app."
  value = {
    allow_insecure_connections = azurerm_container_app.cae_app.ingress[0].allow_insecure_connections
    external_enabled           = azurerm_container_app.cae_app.ingress[0].external_enabled
    target_port                = azurerm_container_app.cae_app.ingress[0].target_port
    fqdn                       = azurerm_container_app.cae_app.ingress[0].fqdn
  }
}

output "outbound_ip_addresses" {
  description = "The outbound IP addresses of the container app."
  value       = azurerm_container_app.cae_app.outbound_ip_addresses
}

output "custom_domain_verification_id" {
  description = "The custom domain verification ID of the container app."
  value       = azurerm_container_app.cae_app.custom_domain_verification_id
}
