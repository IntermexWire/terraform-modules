variable "name" {
  description = "Name of the resource group"
  type        = string
}

variable "resource_group_name" {
  description = "(Required) The name of the resource group in which to create the subnet. Changing this forces a new resource to be created."
}

variable "virtual_network_name" {
  description = "(Required) The name of the virtual network to which to attach the subnet. Changing this forces a new resource to be created."
}

variable "address_prefixes" {
  description = "List of address prefixes for the subnet."
  type        = list(string)
}

variable "default_outbound_access" {
  description = "Whether to allow outbound traffic from the subnet."
  type        = bool
  default     = false
}

variable "delegation_name" {
  description = "The name of the delegation."
  type        = string
  default     = "delegation"

}

variable "service_endpoints" {
  description = "The list of Service endpoints to associate with the subnet."
  type        = list(string)
  default     = ["Microsoft.Web", "Microsoft.Sql", "Microsoft.Storage"]
}

variable "enable_delegation" {
  type    = bool
  default = true
}

variable "delegation" {
  type = object({
    name    = string
    actions = list(string)
  })
  default = {
    name    = "Microsoft.Web/serverFarms"
    actions = ["Microsoft.Network/virtualNetworks/subnets/action"]
  }
}

variable "natgw_id" {
  description = "The ID of the NAT Gateway to associate with the subnet."
}