output "id" {
  description = "The ID of the Key Vault."
  value       = azurerm_key_vault.kv.id
}

output "name" {
  description = "The name of the Key Vault."
  value       = azurerm_key_vault.kv.name
}

output "uri" {
  description = "The URI of the Key Vault."
  value       = azurerm_key_vault.kv.vault_uri
}

output "tenant_id" {
  description = "The tenant ID associated with the Key Vault."
  value       = azurerm_key_vault.kv.tenant_id
}