resource "azurerm_resource_group" "rg" {
  count    = var.create ? length(var.locations) : 0
  name     = var.name
  location = element(var.locations, count.index)
  tags     = var.tags
}