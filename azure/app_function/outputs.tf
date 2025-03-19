output "name" {
  description = "The name of the function app"
  value       = azurerm_windows_function_app.app_function.name
}

output "default_hostname" {
  description = "The default hostname of the function app"
  value       = azurerm_windows_function_app.app_function.default_hostname
}

output "id" {
  description = "The ID of the function app"
  value       = azurerm_windows_function_app.app_function.id
}