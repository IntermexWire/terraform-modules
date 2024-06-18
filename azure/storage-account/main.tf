resource "azurerm_storage_account" "sa" {
  for_each                 = var.create ? toset(var.locations) : []
  name                     = "${var.name}${each.key}"
  location                 = each.key
  resource_group_name      = var.resource_group_name
  account_tier             = "Standard"
  account_replication_type = "GRS"
  tags                     = var.tags
}