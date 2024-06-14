variable "name" {
  description = "Specifies the name of the storage account."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the storage account."
  type        = string
}

variable "location" {
  description = "Specifies the supported Azure location where the resource exists."
  type        = string
}

variable "account_tier" {
  description = "Defines the Tier to use for this storage account."
  type        = string
}

variable "account_replication_type" {
  description = "Defines the type of replication to use for this storage account."
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resource group"
  type        = map(string)
  default     = {}
}

variable "container_names" {
  description = "A list of names for storage containers to be created within the storage account."
  type        = list(string)
  default     = []
}

variable "allowed_subnet_ids" {
  description = "List of subnet IDs that are allowed to access the storage account."
  type        = list(string)
  default     = []
}

variable "allowed_ip_ranges" {
  description = "List of IP address ranges that are allowed to access the storage account."
  type        = list(string)
  default     = []
}