resource "azurerm_subnet" "snet" {
  name                 = var.name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = var.address_prefixes

  default_outbound_access_enabled = var.default_outbound_access

  service_endpoints = var.service_endpoints

  delegation {
    name = var.delegation_name

    service_delegation {
      name    = var.delegation.name
      actions = var.delegation.actions
    }
  }
}

resource "azurerm_subnet_nat_gateway_association" "natgw_association" {
  subnet_id      = azurerm_subnet.snet.id
  nat_gateway_id = var.natgw_id
}

