output "app_service_names" {
  description = "The names of the App Services."
  value       = { for k, app in azurerm_windows_web_app.app_service : k => app.name }
}

output "app_service_ids" {
  description = "The IDs of the App Services."
  value       = { for k, app in azurerm_windows_web_app.app_service : k => app.id }
}

output "default_site_hostnames" {
  description = "The default site hostnames of the App Services."
  value       = { for k, app in azurerm_windows_web_app.app_service : k => "${app.name}.azurewebsites.net" }
}

output "custom_domain_verification_ids" {
  description = "The custom domain verification IDs of the App Services."
  value       = { for k, app in azurerm_windows_web_app.app_service : k => app.custom_domain_verification_id }
}