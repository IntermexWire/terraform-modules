variable "name" {
  description = "Name of the app service plan"
  type        = string
}

variable "locations" {
  description = "Locations of the app service plans"
  type        = list(string)
}

variable "resource_group_name" {
  description = "Name of the resource group where the app service plan will be created"
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the app service plan"
  type        = map(string)
  default     = {}
}

variable "create" {
  description = "Whether to create the app service plan"
  type        = bool
  default     = true
}

variable "os_type" {
  description = "The operating system type of the app service plan"
  type        = string
  default     = "Windows"
  
}

variable "sku_name" {
  description = "The SKU name of the app service plan"
  type        = string
  default     = "B1"
  
}

variable "worker_count" {
  description = "The number of workers to allocate to the app service plan"
  type        = number
  default     = 1
  
}
