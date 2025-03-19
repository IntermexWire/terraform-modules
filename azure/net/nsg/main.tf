resource "azurerm_network_security_group" "nsg" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.tags
}

resource "azurerm_network_security_rule" "security_rule" {
  for_each = { for rule in var.security_rules : rule.name => rule }

  name                       = each.value.name
  priority                   = each.value.priority
  direction                  = each.value.direction
  access                     = each.value.access
  protocol                   = each.value.protocol
  source_port_range          = each.value.source_port_range
  destination_port_range     = each.value.destination_port_range
  destination_address_prefix = each.value.destination_address_prefix
  resource_group_name        = var.resource_group_name
  network_security_group_name = azurerm_network_security_group.nsg.name
  source_address_prefixes     = each.value.source_address_prefixes
}


resource "azurerm_subnet_network_security_group_association" "subnet_association" {
  subnet_id                 = var.snet_id
  network_security_group_id = azurerm_network_security_group.nsg.id
}