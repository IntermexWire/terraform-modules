variable "name" {
  description = "The name of the Container App Environment."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Container App Environment."
  type        = string
}

variable "location" {
  description = "The Azure region where the Container App Environment will be created."
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
}

variable "log_analytics_workspace_id" {
  description = "The ID of the Log Analytics Workspace to associate with the Container App Environment."
  type        = string
}

variable "logs_destination" {
  description = "The destination for logs."
  type        = string
  default     = "log-analytics"
}

variable "infrastructure_subnet_id" {
  description = "The ID of the subnet to use for infrastructure."
  type        = string
}

variable "infrastructure_resource_group_name" {
  description = "Name of the platform-managed resource group created for the Managed Environment to host infrastructure resources. Changing this forces a new resource to be created."
  type        = string

}

variable "workload_profile" {
  description = "The workload profile configuration for the container app environment."
  type = object({
    name                  = optional(string) // Make the name field optional
    workload_profile_type = string
    minimum_count         = number
    maximum_count         = number
  })

  validation {
    condition     = var.workload_profile.minimum_count <= var.workload_profile.maximum_count
    error_message = "minimum_count must be less than or equal to maximum_count."
  }

  validation {
    condition     = can(length(var.workload_profile.name)) ? length(var.workload_profile.name) < 16 : true
    error_message = "The workload profile name must be less than 16 characters."
  }
}

variable "internal_load_balancer_enabled" {
  description = "Whether the internal load balancer is enabled."
  type        = bool
  default     = false
}

variable "zone_redundancy_enabled" {
  description = "Whether zone redundancy is enabled."
  type        = bool
  default     = false
  
}