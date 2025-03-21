variable "name" {
  description = "The name of the subnet."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "virtual_network_name" {
  description = "The name of the virtual network."
  type        = string
}

variable "address_prefixes" {
  description = "The address prefixes for the subnet."
  type        = list(string)
}

variable "default_outbound_access" {
  description = "Whether default outbound access is enabled."
  type        = bool
  default     = false
}

variable "enable_service_endpoints" {
  description = "Whether to enable service endpoints for the subnet."
  type        = bool
  default     = false
}

variable "service_endpoints" {
  description = "The list of service endpoints to associate with the subnet."
  type        = list(string)
  default     = []
}

variable "enable_delegation" {
  description = "Whether to enable delegation for the subnet."
  type        = bool
  default     = false
}

variable "delegation_name" {
  description = "The name of the delegation."
  type        = string
  default     = ""
}

variable "delegation" {
  description = "The delegation configuration."
  type = object({
    name    = string
    actions = list(string)
  })
  default = {
    name    = ""
    actions = []
  }
}

variable "enable_nat_gateway" {
  description = "Flag to enable or disable NAT gateway association for the subnet"
  type        = bool
  default     = false
}

variable "nat_gateway_id" {
  description = "The ID of the NAT gateway to associate with the subnet"
  type        = string
  default     = null
}