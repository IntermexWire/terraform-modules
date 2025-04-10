output "id" {
  description = "The ID of the User Assigned Identity."
  value       = azurerm_user_assigned_identity.identity.id
}

output "principal_id" {
  description = "The Principal ID of the User Assigned Identity."
  value       = azurerm_user_assigned_identity.identity.principal_id
}

output "client_id" {
  description = "The Client ID of the User Assigned Identity."
  value       = azurerm_user_assigned_identity.identity.client_id
}
