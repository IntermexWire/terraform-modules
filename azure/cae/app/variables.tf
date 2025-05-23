variable "name" {
  description = "The name of the container app."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the container app."
  type        = string
}

variable "container_app_environment_id" {
  description = "The ID of the container app environment."
  type        = string
}

variable "revision_mode" {
  description = "The revision mode for the container app."
  type        = string
  default     = "Single"
}

variable "workload_profile_name" {
  description = "The name of the workload profile."
  type        = string
  default = null
}

variable "ingress" {
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

/*
variable "ip_security_restriction" {
  description = "List of IP security restrictions for the container app."
  type = list(object({
    name       = string
    description = optional(string)
    ip_address = string
    action     = string
  }))
  default = []
}
*/

variable "container" {
  description = "Container configuration for the app."
  type = object({
    name   = optional(string, "hello-world")
    image  = optional(string, "mcr.microsoft.com/k8se/quickstart:latest")
    cpu    = optional(string, "0.25")
    memory = optional(string, "0.5Gi")
    env    = optional(list(object({
      name  = string
      value = string
    })), [])
  })
  default = null
}

variable "registry" {
  description = "Registry configuration for the app."
  type = object({
    server               = optional(string, null)
    username             = optional(string, null)
    password_secret_name = optional(string, null)
    identity             = optional(string, null)
  })
  default = null
}

variable "secret" {
  description = "A list of secrets to be used in the container app."
  type = object({
    name  = optional(string, null)
    value = optional(string, null)
  })
  default = null
}

variable "identity" {
  description = "Identity configuration for the app."
  type = object({
    type        = optional(string, "SystemAssigned")
    identity_ids = optional(list(string), [])
  })
  default = null
}

variable "location" {
  description = "The location where the resource will be created."
  type        = string
  default     = "eastus"
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
}

variable "min_replicas" {
  description = "Minimum number of instances for automatic scaling."
  type        = number
  default     = 1 // Default value to ensure backward compatibility
}

variable "max_replicas" {
  description = "Maximum number of instances for automatic scaling."
  type        = number
  default     = 10 // Default value to ensure backward compatibility
}