resource "azurerm_resource_group" "rg" {
  for_each = var.create ? toset(var.locations) : []
  name     = var.name
  location = each.key
  tags     = var.tags
}