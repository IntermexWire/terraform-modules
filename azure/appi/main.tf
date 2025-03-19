resource "azurerm_application_insights" "appi" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  application_type    = var.app_insight_app_type
  workspace_id        = var.law_workspace_id
  tags                = var.tags
}
