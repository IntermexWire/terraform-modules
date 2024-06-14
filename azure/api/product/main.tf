resource "azurerm_api_management_product" "example" {
  product_id            = var.product_id
  display_name          = var.display_name
  api_management_name   = var.api_management_name
  resource_group_name   = var.resource_group_name
  subscription_required = var.subscription_required
  approval_required     = var.approval_required
  published             = var.published
}