variable "name" {
  description = "Resource name"
  type        = string
}


variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Resource location"
  type        = string
}

variable "tags" {
  description = "Tags to assign to the resource."
  type        = map(string)
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

variable "appi_instrumentation_key" {
  description = "The instrumentation key of the Application Insights."
  type        = string
  default = null
}

variable "identity_type" {
  description = "The identity type of the API Management service."
  type        = string
  default     = "SystemAssigned"
  
}

variable "min_api_version" {
  description = "The minimum API version of the API Management service."
  type        = string
  default     = null
  
}