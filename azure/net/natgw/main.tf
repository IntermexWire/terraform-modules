resource "azurerm_public_ip" "public_ip" {
  count               = var.enable_nat_gateway ? 1 : 0
  name                = var.public_ip_name
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = var.allocation_method
  sku                 = var.sku_name
  tags                = var.tags
}

resource "azurerm_nat_gateway" "natgw" {
  count               = var.enable_nat_gateway ? 1 : 0
  name                = var.natgw_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku_name            = var.sku_name
  tags                = var.tags
}

resource "azurerm_nat_gateway_public_ip_association" "example" {
  count               = var.enable_nat_gateway ? 1 : 0
  nat_gateway_id       = azurerm_nat_gateway.natgw[0].id
  public_ip_address_id = azurerm_public_ip.public_ip[0].id
}