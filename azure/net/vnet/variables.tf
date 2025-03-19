variable "name" {
  description = "Name of the vnet"
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

variable "address_space" {
  description = "Address space of the vnet"
  type        = list(string)
}

variable "tags" {
  description = "A map of tags to assign to the vnet"
  type        = map(string)
  default     = {}
}