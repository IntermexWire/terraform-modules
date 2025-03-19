output "id" {
  description = "The ID of the primary MSSQL server."
  value       = azurerm_mssql_server.primary.id
}

output "name" {
  description = "The name of the primary MSSQL server."
  value       = azurerm_mssql_server.primary.name
}

output "fqdn" {
  description = "The fully qualified domain name of the primary MSSQL server."
  value       = azurerm_mssql_server.primary.fully_qualified_domain_name
}

output "administrator_login" {
  description = "The administrator login of the MSSQL server."
  value       = azurerm_mssql_server.primary.administrator_login
}

output "administrator_login_password" {
  description = "The administrator password of the MSSQL server."
  value       = azurerm_mssql_server.primary.administrator_login_password
}