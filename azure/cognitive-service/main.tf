resource "azurerm_cognitive_account" "cognitive_account" {
  name                  = var.name
  location              = var.location
  resource_group_name   = var.resource_group_name
  kind                  = var.kind
  sku_name              = var.sku_name
  custom_subdomain_name = var.custom_subdomain_name

  network_acls {
    default_action = var.default_action
    ip_rules       = var.ip_rules

    dynamic "virtual_network_rules" {
      for_each = var.subnet_ids

      content {
        subnet_id = virtual_network_rules.value
      }
    }
  }

  tags = var.tags
}

resource "azurerm_private_endpoint" "cognitive_pe" {
  name                = "${var.name}-pe"
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.subnet_id # This will be passed from the root module

  private_service_connection {
    name                           = "${var.name}-psc"
    private_connection_resource_id = azurerm_cognitive_account.cognitive_account.id
    is_manual_connection           = false
    subresource_names              = ["account"]
  }
}
