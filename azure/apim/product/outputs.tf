output "id" {
  value = azurerm_api_management_product.apim_product.id
  description = "The full ID path for the API Management Product."
}

output "product_id" {
  value       = azurerm_api_management_product.apim_product.product_id
  description = "The unique identifier for the API Management Product."
}

output "product_display_name" {
  value       = azurerm_api_management_product.apim_product.display_name
  description = "The Display Name for the API Management Product."
}

output "product_api_management_name" {
  value       = azurerm_api_management_product.apim_product.api_management_name
  description = "The name of the API Management Service associated with the Product."
}

output "product_subscription_required" {
  value       = azurerm_api_management_product.apim_product.subscription_required
  description = "Indicates whether a Subscription is required to access API's included in this Product."
}

output "product_approval_required" {
  value       = azurerm_api_management_product.apim_product.approval_required
  description = "Indicates whether subscribers need to be approved prior to being able to use the Product."
}

output "product_published" {
  value       = azurerm_api_management_product.apim_product.published
  description = "Indicates whether the Product is Published."
}
