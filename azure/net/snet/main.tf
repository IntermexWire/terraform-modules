resource "azurerm_subnet" "snet" {
  name                 = var.name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = var.address_prefixes

  default_outbound_access_enabled = var.default_outbound_access

  service_endpoints = var.enable_service_endpoints ? var.service_endpoints : []

  # Conditionally include the delegation block
  dynamic "delegation" {
    for_each = var.enable_delegation ? [1] : []
    content {
      name = var.delegation_name

      service_delegation {
        name    = var.delegation.name
        actions = var.delegation.actions
      }
    }
  }
}

resource "azurerm_subnet_nat_gateway_association" "this" {
  count          = var.enable_nat_gateway ? 1 : 0
  subnet_id      = azurerm_subnet.snet.id
  nat_gateway_id = var.nat_gateway_id
}