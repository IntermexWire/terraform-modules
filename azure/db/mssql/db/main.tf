resource "azurerm_mssql_database" "mssql_db" {
  name           = var.name
  server_id      = var.server_id
  collation      = var.collation
  license_type   = var.license_type
  max_size_gb    = var.max_size_gb
  read_scale     = var.read_scale
  sku_name       = var.sku_name
  zone_redundant = var.zone_redundant
  enclave_type   = var.enclave_type

  tags = var.tags

}