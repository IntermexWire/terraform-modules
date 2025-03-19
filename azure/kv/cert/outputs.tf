output "name" {
  description = "The name of the Key Vault Certificate."
  value       = azurerm_key_vault_certificate.cert.name
}

output "id" {
  description = "The ID of the Key Vault Certificate."
  value       = azurerm_key_vault_certificate.cert.id
}