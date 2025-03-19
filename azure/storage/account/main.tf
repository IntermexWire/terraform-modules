resource "azurerm_storage_account" "sa" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  account_tier             = var.tier
  account_replication_type = var.replication_type
  access_tier              = var.access_tier

  infrastructure_encryption_enabled = var.infrastructure_encryption

  network_rules {
    default_action             = var.network_rules.default_action
    ip_rules                   = var.network_rules.ip_rules
    virtual_network_subnet_ids = var.network_rules.virtual_network_subnet_ids
  }

  tags = var.tags
}