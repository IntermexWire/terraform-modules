variable "public_ip_name" {
  description = "Name of the public ip"
  type        = string
}

variable "natgw_name" {
  description = "Name of the NAT gateway"
  type        = string
}

variable "location" {
  description = "Locations of the vnets"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group where the vnet will be created"
  type        = string
}

variable "allocation_method" {
  description = "The allocation method to use for this Public IP. Possible values are Static and Dynamic."
  type        = string
}

variable "sku_name" {
  description = "The SKU name of the Public IP."
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

variable "enable_nat_gateway" {
  description = "Flag to enable or disable NAT gateway creation"
  type        = bool
  default     = true
}