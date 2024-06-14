variable "vnets" {
  description = "A map of VNets and their properties"
  type = map(object({
    name            = string
    location        = string
    address_space   = list(string)
    create          = bool # Whether to create this VNet
    public_subnets  = list(string)
    private_subnets = list(string)
  }))
}

variable "location" {
  description = "The Azure region where resources will be created"
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the VNet"
}

variable "address_space" {
  description = "The address space for the VNet"
}

variable "public_subnet_prefix" {
  description = "The address prefix for the public subnet"
}

variable "private_subnet_prefix" {
  description = "The address prefix for the private subnet"
}
