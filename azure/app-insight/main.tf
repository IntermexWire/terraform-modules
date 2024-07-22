resource "azurerm_application_insights" "appi" {
  for_each            = toset(var.locations)
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = each.key
  application_type    = var.application_type
  workspace_id        = var.workspace_id
  tags                = var.tags
}

resource "azurerm_monitor_action_group" "mon_action_grp" {
  name                = var.action_grp_name
  resource_group_name = var.resource_group_name
  short_name          = var.action_grp_short_name
}

resource "azurerm_monitor_smart_detector_alert_rule" "smart_alert_rule" {
  for_each = azurerm_application_insights.appi

  name                = "${each.value.name}-alert-rule"
  resource_group_name = var.resource_group_name
  severity            = var.smart_alert_rule_severity
  scope_resource_ids  = [each.value.id]
  frequency           = var.smart_alert_rule_frequency
  detector_type       = var.smart_alert_rule_detector_type

  action_group {
    ids = [azurerm_monitor_action_group.mon_action_grp.id]
  }
}