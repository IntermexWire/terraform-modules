output "workspace_ids" {
  value       = { for k, v in azurerm_log_analytics_workspace.law : k => v.id }
  description = "The IDs of the Log Analytics Workspaces"
}

output "workspace_primary_shared_keys" {
  value       = { for k, v in azurerm_log_analytics_workspace.law : k => v.primary_shared_key }
  description = "The primary shared keys for the Log Analytics Workspaces"
}

output "workspace_secondary_shared_keys" {
  value       = { for k, v in azurerm_log_analytics_workspace.law : k => v.secondary_shared_key }
  description = "The secondary shared keys for the Log Analytics Workspaces"
}