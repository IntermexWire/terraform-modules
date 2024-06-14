resource "azurerm_storage_account" "storage_account" {
  name                      = var.name
  resource_group_name       = var.resource_group_name
  location                  = var.location
  account_tier              = var.account_tier
  account_replication_type  = var.account_replication_type
  enable_https_traffic_only = true

  network_rules {
    default_action             = "Deny"                # Deny by default
    ip_rules                   = var.allowed_ip_ranges # List of allowed IP ranges
    virtual_network_subnet_ids = var.allowed_subnet_ids
  }

  tags = var.tags
}

# Create storage containers using for_each
resource "azurerm_storage_container" "storage_container" {
  for_each = toset(var.container_names)

  name                  = each.value
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = "private" # You can set 'container_access_type' to "blob", "container", or "private"
}