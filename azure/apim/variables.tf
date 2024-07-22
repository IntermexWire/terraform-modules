variable "name" {
  description = "Name for the API Management Service."
  type        = string
}

variable "location" {
  description = "The primary location for the API Management Service instance."
  type        = string
}

variable "additional_locations" {
  description = "Additional locations for the API Management Service instances."
  type        = list(string)
  default     = []
}

variable "resource_group_name" {
  description = "Resource group in which to create the API Management Service."
  type        = string
}

variable "publisher_name" {
  description = "The name of the publisher."
  type        = string
}

variable "publisher_email" {
  description = "The email of the publisher."
  type        = string
}

variable "sku_name" {
  description = "The SKU name of the API Management Service."
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

variable "enable_additional_locations" {
  description = "Flag to enable additional locations."
  type        = bool
  default     = false
}
