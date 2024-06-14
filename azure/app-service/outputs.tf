output "app_service_name" {
  description = "The name of the App Service."
  value       = azurerm_windows_web_app.app_service.name
}

output "app_service_id" {
  description = "The ID of the App Service."
  value       = azurerm_windows_web_app.app_service.id
}

output "default_site_hostname" {
  description = "The default site hostname of the App Service."
  value       = "${azurerm_windows_web_app.app_service.name}.azurewebsites.net"
}

output "custom_domain_verification_id" {
  description = "The custom domain verification ID of the App Service."
  value       = azurerm_windows_web_app.app_service.custom_domain_verification_id
}
