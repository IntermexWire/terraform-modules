resource "azurerm_storage_account" "sa" {
  for_each                 = var.create ? toset(var.locations) : []
  name                     = "${var.name}${each.key}"
  location                 = each.key
  resource_group_name      = var.resource_group_name
  account_tier             = "Standard"
  account_replication_type = "GRS"
  min_tls_version          = "TLS1_2"

  network_rules {
    default_action             = "Deny"
    ip_rules                   = var.ip_rules
    virtual_network_subnet_ids = [var.subnet_id]
    bypass                     = ["AzureServices"]
  }

  tags = var.tags
}