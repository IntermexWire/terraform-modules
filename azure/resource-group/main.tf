resource "azurerm_resource_group" "rg" {

  name     = lower(var.name)
  location = var.location
  tags     = var.tags
}