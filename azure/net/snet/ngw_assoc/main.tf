resource "azurerm_subnet_nat_gateway_association" "natgw_association" {
  subnet_id      = var.snet_id
  nat_gateway_id = var.natgw_id
}
