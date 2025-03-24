resource "azurerm_api_management_user" "apim_user" {
  user_id             = var.user_id
  api_management_name = var.api_management_name
  resource_group_name = var.resource_group_name
  first_name          = var.user_first_name
  last_name           = var.user_last_name
  email               = var.user_email
  state               = var.user_state
}

resource "azurerm_api_management_subscription" "apim_subscription" {
  api_management_name = var.api_management_name
  resource_group_name = var.resource_group_name
  product_id          = var.product_id
  user_id             = azurerm_api_management_user.apim_user.id
  display_name        = var.display_name
  state               = var.state
  allow_tracing       = var.allow_tracing
}