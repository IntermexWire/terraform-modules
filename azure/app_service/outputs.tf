output "id" {
  description = "The ID of the Azure Windows Web App"
  value       = azurerm_windows_web_app.app_service.id
}

output "default_hostname" {
  description = "The default hostname of the Azure Windows Web App"
  value       = azurerm_windows_web_app.app_service.default_hostname
}

output "outbound_ip_addresses" {
  description = "The outbound IP addresses of the Azure Windows Web App"
  value       = azurerm_windows_web_app.app_service.outbound_ip_addresses
}

output "identity" {
  description = "The identity block of the Azure Windows Web App"
  value       = azurerm_windows_web_app.app_service.identity
}

output "settings" {
  description = "The application settings of the Azure Windows Web App"
  value       = azurerm_windows_web_app.app_service.app_settings
}
