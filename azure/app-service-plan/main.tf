resource "azurerm_service_plan" "app_service_plan" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku_name            = var.sku_name
  os_type             = var.os_type

  tags = var.tags

}