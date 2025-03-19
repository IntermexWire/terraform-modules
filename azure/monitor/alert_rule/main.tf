resource "azurerm_monitor_smart_detector_alert_rule" "smart_alert_rule" {
  name                = var.name
  resource_group_name = var.resource_group_name
  severity            = var.severity
  scope_resource_ids  = [var.appi_insights_id]
  frequency           = var.frequency
  detector_type       = var.detector_type

  action_group {
    ids = var.monitor_action_group_ids
  }
}