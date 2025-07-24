# Storage Account Module Variables

# Required variables
variable "name" {
  description = "Name of the storage account"
  type        = string
  
  validation {
    condition     = can(regex("^[a-z0-9]{3,24}$", var.name))
    error_message = "Storage account name must be between 3 and 24 characters and can only contain lowercase letters and numbers."
  }
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region for the storage account"
  type        = string
}

# Basic configuration
variable "account_tier" {
  description = "Storage account tier"
  type        = string
  default     = "Standard"
  
  validation {
    condition     = contains(["Standard", "Premium"], var.account_tier)
    error_message = "Account tier must be 'Standard' or 'Premium'."
  }
}

variable "account_replication_type" {
  description = "Storage account replication type"
  type        = string
  default     = "LRS"
  
  validation {
    condition     = contains(["LRS", "GRS", "RAGRS", "ZRS", "GZRS", "RAGZRS"], var.account_replication_type)
    error_message = "Account replication type must be one of: LRS, GRS, RAGRS, ZRS, GZRS, RAGZRS."
  }
}

variable "account_kind" {
  description = "Storage account kind"
  type        = string
  default     = "StorageV2"
  
  validation {
    condition     = contains(["BlobStorage", "BlockBlobStorage", "FileStorage", "Storage", "StorageV2"], var.account_kind)
    error_message = "Account kind must be one of: BlobStorage, BlockBlobStorage, FileStorage, Storage, StorageV2."
  }
}

# Access configuration
variable "public_network_access_enabled" {
  description = "Whether public network access is enabled"
  type        = bool
  default     = false
}

variable "allow_nested_items_to_be_public" {
  description = "Allow nested items to be public"
  type        = bool
  default     = false
}

variable "shared_access_key_enabled" {
  description = "Whether shared access key is enabled"
  type        = bool
  default     = true
}

# Security configuration
variable "min_tls_version" {
  description = "Minimum TLS version"
  type        = string
  default     = "TLS1_2"
  
  validation {
    condition     = contains(["TLS1_0", "TLS1_1", "TLS1_2"], var.min_tls_version)
    error_message = "Minimum TLS version must be one of: TLS1_0, TLS1_1, TLS1_2."
  }
}

variable "https_traffic_only_enabled" {
  description = "Whether HTTPS traffic only is enabled"
  type        = bool
  default     = true
}

# Network rules
variable "network_rules" {
  description = "Network rules for the storage account"
  type = object({
    default_action             = optional(string, "Allow")
    ip_rules                   = optional(list(string), [])
    virtual_network_subnet_ids = optional(list(string), [])
    bypass                     = optional(list(string), ["AzureServices"])
  })
  default = null
}

# Encryption configuration
variable "encryption" {
  description = "Encryption configuration for the storage account"
  type = object({
    services = optional(object({
      blob = optional(object({
        enabled  = optional(bool, true)
        key_type = optional(string, "Service")
      }), {})
      file = optional(object({
        enabled  = optional(bool, true)
        key_type = optional(string, "Service")
      }), {})
      queue = optional(object({
        enabled  = optional(bool, true)
        key_type = optional(string, "Service")
      }), {})
      table = optional(object({
        enabled  = optional(bool, true)
        key_type = optional(string, "Service")
      }), {})
    }), {})
    require_infrastructure_encryption = optional(bool, false)
  })
  default = {
    services = {
      blob  = { enabled = true, key_type = "Service" }
      file  = { enabled = true, key_type = "Service" }
      queue = { enabled = true, key_type = "Service" }
      table = { enabled = true, key_type = "Service" }
    }
    require_infrastructure_encryption = false
  }
}

# Container configuration
variable "containers" {
  description = "Storage containers configuration"
  type = map(object({
    container_access_type = optional(string, "private")
    metadata             = optional(map(string), {})
  }))
  default = {}
}

# SAS policy configuration
variable "sas_policy" {
  description = "SAS policy configuration"
  type = object({
    default_permissions     = optional(list(string), ["read"])
    default_expiry_hours   = optional(number, 24)
    allowed_resource_types = optional(list(string), ["object"])
    allowed_services       = optional(list(string), ["blob"])
  })
  default = {
    default_permissions     = ["read"]
    default_expiry_hours   = 24
    allowed_resource_types = ["object"]
    allowed_services       = ["blob"]
  }
}

# Lifecycle management
variable "lifecycle_management" {
  description = "Lifecycle management rules"
  type = object({
    rules = optional(list(object({
      name    = string
      enabled = optional(bool, true)
      filters = optional(object({
        prefix_match = optional(list(string), [])
        blob_types   = optional(list(string), ["blockBlob"])
      }), {})
      actions = optional(object({
        tier_to_cool = optional(object({
          days_after_modification_greater_than = optional(number)
        }), {})
        tier_to_archive = optional(object({
          days_after_modification_greater_than = optional(number)
        }), {})
        delete = optional(object({
          days_after_modification_greater_than = optional(number)
        }), {})
      }), {})
    })), [])
  })
  default = {
    rules = []
  }
}

# CORS rules
variable "cors_rules" {
  description = "CORS rules for the storage account"
  type = list(object({
    allowed_origins    = list(string)
    allowed_methods    = list(string)
    allowed_headers    = list(string)
    exposed_headers    = list(string)
    max_age_in_seconds = number
  }))
  default = []
}

# Customer managed key
variable "customer_managed_key" {
  description = "Customer managed key configuration"
  type = object({
    key_vault_key_id          = string
    user_assigned_identity_id = string
  })
  default = null
}

# Blob properties
variable "blob_properties" {
  description = "Blob properties configuration"
  type = object({
    versioning_enabled       = optional(bool, false)
    change_feed_enabled      = optional(bool, false)
    default_service_version  = optional(string, "2020-06-12")
    last_access_time_enabled = optional(bool, false)
    
    container_delete_retention_policy = optional(object({
      days = optional(number, 7)
    }), {})
    
    delete_retention_policy = optional(object({
      days = optional(number, 7)
    }), {})
  })
  default = {}
}

# Tags
variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
  default     = {}
}