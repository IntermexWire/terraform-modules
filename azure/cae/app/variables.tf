variable "name" {
  description = "The name of the container app."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the container app."
  type        = string
}

variable "environment_name" {
  description = "The name of the container app environment."
  type        = string
  default     = null
}

variable "container_app_environment_id" {
  description = "The ID of the container app environment."
  type        = string
  default     = " "
}

variable "revision_mode" {
  description = "The revision mode for the container app."
  type        = string
  default     = "Single"
}

variable "workload_profile_name" {
  description = "The name of the workload profile."
  type        = string
  default     = null
}

variable "ingress_settings" {
  description = "Settings for the ingress configuration."
  type = object({
    allow_insecure_connections = optional(bool, false)
    external_enabled           = optional(bool, true)
    target_port                = optional(number, 80)
    traffic_weight_percentage  = optional(number, 100)
    revision_suffix            = optional(string, null)
    latest_revision            = optional(bool, true)
    client_certificate_mode   = optional(string, "Ignore") 
  })
}

variable "container_settings" {
  description = "The container settings for the app."
  type        = object({
    container_name = optional(string, "default-container")
    image          = optional(string, "mcr.microsoft.com/azuredocs/containerapps-helloworld:latest")
    cpu            = optional(string, "0.25")
    memory         = optional(string, "0.5Gi")
  })
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
}
