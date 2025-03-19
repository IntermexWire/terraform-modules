variable "name" {
  description = "The name of the Network Security Group."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the NSG will be created."
  type        = string
}

variable "location" {
  description = "The Azure location where the NSG will be created."
  type        = string
}

variable "tags" {
  description = "A map of tags assigned to the NSG."
  type        = map(string)
  default     = {}
}

variable "snet_id" {
  description = "The ID of the subnet to associate with this server."
  type        = string
}

variable "security_rules" {
  description = "A list of security rules to apply to the NSG."
  type = list(object({
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefixes    = list(string)
    destination_address_prefix = string
  }))
  default = []
}