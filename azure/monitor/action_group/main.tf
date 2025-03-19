resource "azurerm_monitor_action_group" "mon_action_grp" {
  name                = var.name
  resource_group_name = var.resource_group_name
  short_name          = var.action_group_short_name
}