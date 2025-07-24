# Azure Storage Account Resource
resource "azurerm_storage_account" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  # Basic configuration
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  account_kind            = var.account_kind

  # Access configuration
  public_network_access_enabled   = var.public_network_access_enabled
  allow_nested_items_to_be_public = var.allow_nested_items_to_be_public
  shared_access_key_enabled       = var.shared_access_key_enabled

  # Security configuration
  min_tls_version                = var.min_tls_version
  https_traffic_only_enabled     = var.https_traffic_only_enabled
  infrastructure_encryption_enabled = var.encryption.require_infrastructure_encryption

  # Customer managed key encryption
  dynamic "customer_managed_key" {
    for_each = var.customer_managed_key != null ? [var.customer_managed_key] : []
    content {
      key_vault_key_id          = customer_managed_key.value.key_vault_key_id
      user_assigned_identity_id = customer_managed_key.value.user_assigned_identity_id
    }
  }

  # Network rules
  dynamic "network_rules" {
    for_each = var.network_rules != null ? [var.network_rules] : []
    content {
      default_action             = network_rules.value.default_action
      ip_rules                   = network_rules.value.ip_rules
      virtual_network_subnet_ids = network_rules.value.virtual_network_subnet_ids
      bypass                     = network_rules.value.bypass
    }
  }

  # Blob properties
  dynamic "blob_properties" {
    for_each = var.blob_properties != null ? [var.blob_properties] : []
    content {
      versioning_enabled       = blob_properties.value.versioning_enabled
      change_feed_enabled      = blob_properties.value.change_feed_enabled
      default_service_version  = blob_properties.value.default_service_version
      last_access_time_enabled = blob_properties.value.last_access_time_enabled

      dynamic "container_delete_retention_policy" {
        for_each = blob_properties.value.container_delete_retention_policy != null ? [blob_properties.value.container_delete_retention_policy] : []
        content {
          days = container_delete_retention_policy.value.days
        }
      }

      dynamic "delete_retention_policy" {
        for_each = blob_properties.value.delete_retention_policy != null ? [blob_properties.value.delete_retention_policy] : []
        content {
          days = delete_retention_policy.value.days
        }
      }

      # CORS rules
      dynamic "cors_rule" {
        for_each = var.cors_rules
        content {
          allowed_origins    = cors_rule.value.allowed_origins
          allowed_methods    = cors_rule.value.allowed_methods
          allowed_headers    = cors_rule.value.allowed_headers
          exposed_headers    = cors_rule.value.exposed_headers
          max_age_in_seconds = cors_rule.value.max_age_in_seconds
        }
      }
    }
  }

  tags = var.tags
}

# Storage containers
resource "azurerm_storage_container" "containers" {
  for_each = var.containers

  name                  = each.key
  storage_account_id    = azurerm_storage_account.this.id
  container_access_type = each.value.container_access_type

  metadata = each.value.metadata
}

# Lifecycle management policy
resource "azurerm_storage_management_policy" "lifecycle" {
  count = length(var.lifecycle_management.rules) > 0 ? 1 : 0

  storage_account_id = azurerm_storage_account.this.id

  dynamic "rule" {
    for_each = var.lifecycle_management.rules
    content {
      name    = rule.value.name
      enabled = rule.value.enabled

      filters {
        prefix_match = rule.value.filters.prefix_match
        blob_types   = rule.value.filters.blob_types
      }

      actions {
        dynamic "base_blob" {
          for_each = (rule.value.actions.tier_to_cool != null || 
                     rule.value.actions.tier_to_archive != null || 
                     rule.value.actions.delete != null) ? [1] : []
          content {
            tier_to_cool_after_days_since_modification_greater_than    = try(rule.value.actions.tier_to_cool.days_after_modification_greater_than, null)
            tier_to_archive_after_days_since_modification_greater_than = try(rule.value.actions.tier_to_archive.days_after_modification_greater_than, null)
            delete_after_days_since_modification_greater_than          = try(rule.value.actions.delete.days_after_modification_greater_than, null)
          }
        }
      }
    }
  }
}