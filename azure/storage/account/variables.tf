variable "name" {
  description = "Name for the resource."
  type        = string
}

variable "location" {
  description = "Region location for the resource."
  type        = string
}

variable "resource_group_name" {
  description = "Resource group in which to create the resouce in."
  type        = string
}

variable "tier" {
  description = "The performance tier for the storage account, either Standard or Premium"
  type        = string
  default     = "Standard"
}

variable "replication_type" {
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

variable "network_rules" {
  description = "Network rules for the storage account"
  type = object({
    default_action             = string
    ip_rules                   = list(string)
    virtual_network_subnet_ids = list(string)
  })
  default = {
    default_action             = "Deny"
    ip_rules                   = []
    virtual_network_subnet_ids = []
  }
}

variable "infrastructure_encryption" {
  type        = string
  description = "(optional) describe your variable"
  default     = "true"
}


variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
  default     = {}
}
