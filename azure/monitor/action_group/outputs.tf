output "id" {
  description = "The ID of the Monitor Action Group"
  value       = azurerm_monitor_action_group.mon_action_grp.id
}

output "name" {
  description = "The name of the Monitor Action Group"
  value       = azurerm_monitor_action_group.mon_action_grp.name
}

output "short_name" {
  description = "The short name of the Monitor Action Group"
  value       = azurerm_monitor_action_group.mon_action_grp.short_name
}