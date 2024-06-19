variable "name" {
  description = "Name of the subnet"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group where the subnet will be created"
  type        = string
}

variable "virtual_network_name" {
  description = "The name of the virtual network to which to attach the subnet."
  type        = string
}

variable "address_prefixes" {
  description = "List of address prefixes for the subnet."
  type        = list(string)
}

variable "service_endpoints" {
  description = "The list of Service endpoints to associate with the subnet."
  type        = list(string)
  default     = ["Microsoft.Storage", "Microsoft.KeyVault"]
}

variable "enable_delegation" {
  type    = bool
  default = false
}

variable "subnet_delegation" {
  type = object({
    name    = string
    actions = list(string)
  })
  default = null
}

variable "create" {
  description = "Whether to create the subnet"
  type        = bool
  default     = true
}

variable "locations" {
  description = "Locations of the subnets"
  type        = list(string)
}