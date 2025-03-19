variable "name" {
  description = "Name for the API Management Service."
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "The primary location for the API Management Service instance."
  type        = string
}

variable "sku_name" {
  description = "The SKU name of the API Management Service."
  type        = string
}

variable "tags" {
  description = "Tags to assign to the resource."
  type        = map(string)
}

variable "retention_in_days" {
  description = "(Optional) The workspace data retention in days. Possible values are either 7 (Free Tier only) or range between 30 and 730."
  type        = number

}
