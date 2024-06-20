resource "azurerm_storage_account" "sa" {
  for_each                 = var.create ? toset(var.locations) : []
  name                     = "${var.name}${each.key}"
  location                 = each.key
  resource_group_name      = var.resource_group_name
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  min_tls_version          = var.min_tls_version
  infrastructure_encryption_enabled = var.infrastructure_encryption_enabled

  network_rules {
    default_action             = var.default_action
    ip_rules                   = var.ip_rules
    virtual_network_subnet_ids = [var.subnet_id]
    bypass                     = var.bypass
  }

  tags = var.tags
}