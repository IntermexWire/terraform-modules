resource "azurerm_storage_container" "container" {
  name                  = var.name
  storage_account_name  = var.storage_account_name
  container_access_type = var.container_access_type
  metadata              = var.metadata
}