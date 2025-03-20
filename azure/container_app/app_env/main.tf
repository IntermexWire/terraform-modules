resource "azurerm_container_app_environment" "cae" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  logs_destination           = var.logs_destination
  log_analytics_workspace_id = var.log_analytics_workspace_id
  tags                = var.tags
}

