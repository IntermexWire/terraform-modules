variable "name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure resource location"
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resource group"
  type        = map(string)
  default     = {}
}