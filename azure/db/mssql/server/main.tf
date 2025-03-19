resource "azurerm_mssql_server" "primary" {
  name                          = var.name
  resource_group_name           = var.resource_group_name
  location                      = var.location
  version                       = var.sql_server_version
  administrator_login           = var.administrator_login
  administrator_login_password  = var.administrator_login_password
  minimum_tls_version           = var.minimum_tls_version
  public_network_access_enabled = var.public_network_access_enabled

  tags = var.tags
}

resource "azurerm_mssql_virtual_network_rule" "primary" {
  name      = var.vnet_rule_name
  server_id = azurerm_mssql_server.primary.id
  subnet_id = var.snet_id
}