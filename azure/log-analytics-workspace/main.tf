resource "azurerm_log_analytics_workspace" "law" {
  for_each            = var.create ? toset(var.locations) : []
  name                = var.name
  location            = each.key
  resource_group_name = var.resource_group_name
  sku                 = var.sku_name
  retention_in_days   = var.retention_in_days
}