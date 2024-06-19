variable "name" {
  description = "Name of the resource group"
  type        = string
}

variable "locations" {
  type = list(string)
}

variable "tags" {
  description = "A map of tags to assign to the resource group"
  type        = map(string)
  default     = {}
}

variable "create" {
  description = "Whether to create the resource group"
  type        = bool
  default     = true
}