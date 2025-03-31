resource "azurerm_nat_gateway" "natgw" {
  count               = var.natgw_enabled ? 1 : 0
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku_name            = var.sku_name
  tags                = var.tags
}

resource "azurerm_public_ip" "public_ip" {
  count               = var.natgw_enabled ? 1 : 0
  resource_group_name = var.resource_group_name
  name                = var.public_ip_name
  location            = var.location
  allocation_method   = var.natgw_ip_allocation_method
  sku  = var.sku_name
  tags = var.tags
}

resource "azurerm_nat_gateway_public_ip_association" "natgw_pip_assoc" {
  count                = var.natgw_enabled ? 1 : 0
  nat_gateway_id       = azurerm_nat_gateway.natgw[0].id
  public_ip_address_id = azurerm_public_ip.public_ip[0].id
}