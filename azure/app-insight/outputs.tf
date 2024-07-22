output "application_insights_instance_ids" {
  value       = { for k, appi in azurerm_application_insights.appi : k => appi.id }
  description = "The IDs of the Application Insights instances"
}

output "application_insights_instance_names" {
  value       = { for k, appi in azurerm_application_insights.appi : k => appi.name }
  description = "The names of the Application Insights instances"
}

output "monitor_action_group_id" {
  value       = azurerm_monitor_action_group.mon_action_grp.id
  description = "The ID of the Monitor Action Group"
}

output "smart_detector_alert_rule_ids" {
  value       = { for k, rule in azurerm_monitor_smart_detector_alert_rule.smart_alert_rule : k => rule.id }
  description = "The IDs of the Smart Detector Alert Rules"
}

output "appinsights_instrumentationkey" {
  value       = { for k, appi in azurerm_application_insights.appi : k => appi.instrumentation_key }
  description = "The instrumentation keys of the Application Insights instances"
}