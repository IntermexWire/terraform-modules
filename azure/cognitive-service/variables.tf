variable "name" {
  description = "Specifies the name of the Cognitive Services Account."
  type        = string
}

variable "location" {
  description = "Specifies the supported Azure location where the resource exists."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Cognitive Services Account."
  type        = string
}

variable "kind" {
  description = " Cognitive Services Account kind."
  type        = string
}

variable "sku_name" {
  description = "The SKU name for the Cognitive Services Account."
  type        = string
  default     = "S0" # Change as needed
}

variable "custom_subdomain_name" {
  description = "The custom subdomain name for the Cognitive Services Account."
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

variable "ip_rules" {
  description = "List of IP addresses or IP address ranges in CIDR format."
  type        = list(string)
}

variable "default_action" {
  description = "The default action to set for network access to resource"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet resource IDs to which to allow access."
  type        = list(string)
}

variable "subnet_id" {
  description = "The ID of the subnet where the private endpoint will be created."
  type        = string
}
