output "app_insights_id" {
  value       = azurerm_application_insights.appi.id
  description = "The ID of the Application Insights component."
}

output "app_insights_instrumentation_key" {
  value       = azurerm_application_insights.appi.instrumentation_key
  description = "The Instrumentation Key for the Application Insights component."
}

output "monitor_action_group_id" {
  value       = azurerm_monitor_action_group.mon_action_grp.id
  description = "The ID of the Monitor Action Group."
}

output "smart_detector_alert_rule_id" {
  value       = azurerm_monitor_smart_detector_alert_rule.smart_alert_rule.id
  description = "The ID of the Smart Detector Alert Rule."
}