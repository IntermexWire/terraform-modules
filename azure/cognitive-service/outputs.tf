output "cognitive_account_endpoint" {
  description = "The Endpoint URL of the Cognitive Services Account."
  value       = azurerm_cognitive_account.cognitive_account.endpoint
}

output "cognitive_account_id" {
  value = azurerm_cognitive_account.cognitive_account.id
}