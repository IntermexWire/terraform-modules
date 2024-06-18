variable "name" {
  description = "Name of the storage account"
  type        = string
}

variable "locations" {
  description = "Locations of the storage accounts"
  type        = list(string)
}

variable "resource_group_name" {
  description = "Name of the resource group where the storage account will be created"
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the storage account"
  type        = map(string)
  default     = {}
}

variable "create" {
  description = "Whether to create the storage account"
  type        = bool
  default     = true
}