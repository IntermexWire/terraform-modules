variable "name" {
  description = "Name for the resource."
  type        = string

  validation {
    condition     = length(var.name) >= 3 && length(var.name) <= 24 && var.name == lower(var.name) && var.name == regex("[a-z0-9]+", var.name)
    error_message = "The storage account name must be between 3 and 24 characters long, consist only of lowercase letters and numbers."
  }
}

variable "location" {
  description = "Region location for the resource."
  type        = string
}

variable "resource_group_name" {
  description = "Resource group in which to create the resouce in."
  type        = string
}

variable "account_tier" {
  description = "The performance tier for the storage account, either Standard or Premium"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "The replication strategy for the storage account (LRS, GRS, RAGRS, ZRS)"
  type        = string
  default     = "LRS"
}

variable "account_kind" {
  description = "The type of storage account (StorageV2, BlobStorage, etc.)"
  type        = string
  default     = "StorageV2"
}

variable "access_tier" {
  description = "The access tier for the storage account (Hot or Cool)"
  type        = string
  default     = "Hot"
}

variable "https_traffic_only_enabled" {
  description = "Allows https traffic only to storage account"
  type        = bool
  default     = true

}

variable "min_tls_version" {
  description = "The minimum TLS version for the storage account"
  type        = string
  default     = "TLS1_2"

}

variable "shared_access_key_enabled" {
  description = "Allows shared access key for the storage account"
  type        = bool
  default     = true

}

variable "public_network_access_enabled" {
  description = "Allows public network access to the storage account"
  type        = bool
  default     = false

}

variable "large_file_share_enabled" {
  description = "Allows large file share for the storage account"
  type        = bool
  default     = false

}

variable "infrastructure_encryption_enabled" {
  description = "Allows infrastructure encryption for the storage account"
  type        = bool
  default     = true

}

variable "is_hns_enabled" {
  description = "Allows Hierarchical namespace for the storage account"
  type        = bool
  default     = false

}

variable "nfsv3_enabled" {
  description = "Allows NFSv3 for the storage account"
  type        = bool
  default     = false

}

variable "sftp_enabled" {
  description = "Allows SFTP for the storage account"
  type        = bool
  default     = false

}

variable "network_rules" {
  description = "Network rules for the storage account"
  type = object({
    default_action             = optional(string, "Deny")
    ip_rules                   = optional(list(string), [])
    virtual_network_subnet_ids = optional(list(string), [])
    private_link_access = optional(object({
      endpoint_resource_id = string
    }), null)
  })
}

variable "custom_domain" {
  description = "Custom domain for the storage account (pass-through)"
  type = object({
    name          = string
    use_subdomain = optional(bool, false)
  })
  default = null
}

variable "static_website" {
  description = "Static website configuration for the storage account (pass-through)"
  type = object({
    index_document     = string
    error_404_document = string
  })
  default = null
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
  default     = {}
}
