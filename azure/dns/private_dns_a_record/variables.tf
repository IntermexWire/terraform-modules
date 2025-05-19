variable "name" {
  description = "The name of the DNS A Record."
  type        = string
}

variable "zone_name" {
  description = "The name of the Private DNS Zone."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "ttl" {
  description = "The Time To Live (TTL) of the DNS record."
  type        = number
  default     = 300
}

variable "records" {
  description = "The list of IPv4 addresses."
  type        = list(string)
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}