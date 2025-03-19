output "workspace_id" {
  value       = azurerm_log_analytics_workspace.law.id
  description = "The IDs of the Log Analytics Workspaces"
}

output "workspace_primary_shared_key" {
  value       = azurerm_log_analytics_workspace.law.primary_shared_key
  description = "The primary shared keys for the Log Analytics Workspaces"
}

output "workspace_secondary_shared_key" {
  value       = azurerm_log_analytics_workspace.law.secondary_shared_key
  description = "The secondary shared keys for the Log Analytics Workspaces"
}