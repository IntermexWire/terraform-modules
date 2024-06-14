# Create VNets conditionally based on the 'create' flag
resource "azurerm_virtual_network" "vnet" {
  for_each = { for k, v in var.vnets : k => v if v.create }

  name                = each.value.name
  address_space       = each.value.address_space
  location            = each.value.location
  resource_group_name = var.resource_group_name
}