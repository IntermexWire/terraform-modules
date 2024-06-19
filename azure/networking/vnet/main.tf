resource "azurerm_virtual_network" "vnet" {
  for_each            = var.create ? toset(var.locations) : []
  name                = var.name
  location            = each.key
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
  tags                = var.tags
}