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

variable "sku_name" {
  description = "The SKU name for the resouce."
  type        = string
  default     = "standard"
}

variable "enabled_for_disk_encryption" {
  description = "Specifies whether the key vault is enabled for disk encryption."
  type        = bool
  default     = true
}

variable "tenant_id" {
  description = "The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault."
  type        = string
}

variable "soft_delete_retention_days" {
  description = "The number of days that items should be retained for when soft delete is enabled."
  type        = number
  default     = 14
}

variable "purge_protection_enabled" {
  description = "Specifies whether purge protection is enabled for the key vault."
  type        = bool
  default     = true
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}


