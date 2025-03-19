output "user_id" {
  description = "The ID of the API Management User."
  value       = azurerm_api_management_user.apim_user.id
}

output "subscription_id" {
  description = "The ID of the API Management Subscription."
  value       = azurerm_api_management_subscription.apim_subscription.id
}

output "primary_key" {
  description = "The primary key of the API Management Subscription."
  value       = azurerm_api_management_subscription.apim_subscription.primary_key
}

output "secondary_key" {
  description = "The secondary key of the API Management Subscription."
  value       = azurerm_api_management_subscription.apim_subscription.secondary_key
}