resource "azurerm_subnet" "snet" {
  for_each             = var.create ? toset(var.locations) : []
  name                 = var.name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = var.address_prefixes
  service_endpoints    = var.service_endpoints
  dynamic "delegation" {
    for_each = var.enable_delegation && var.subnet_delegation != null ? [var.subnet_delegation] : []
    content {
      name = delegation.value.name
      service_delegation {
        name    = delegation.value.name
        actions = delegation.value.actions
      }
    }
  }
}