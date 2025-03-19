output "sql_database_id" {
  description = "The ID of the SQL Database"
  value       = azurerm_mssql_database.mssql_db.id
}

output "sql_database_name" {
  description = "The name of the SQL Database"
  value       = azurerm_mssql_database.mssql_db.name
}

output "fqdn" {
  description = "The fully qualified domain name of the SQL Server"
  value       = var.fqdn
}
