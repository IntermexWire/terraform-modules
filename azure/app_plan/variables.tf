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
  default     = "S1"
}

variable "os_type" {
  description = "The OS type for the resouce."
  type        = string
  default     = "Winodws"
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}


