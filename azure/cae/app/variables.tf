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

variable "container_settings" {
  description = "The container settings for the app."
  type = object({
    container_name = optional(string, "default-container")
    image          = optional(string, "mcr.microsoft.com/azuredocs/containerapps-helloworld:latest")
    cpu            = optional(string, "0.25")
    memory         = optional(string, "0.5Gi")
  })
}

variable "registry_settings" {
  description = "Container registry settings for the app."
  type = object({
    server               = optional(string, null)
    username             = optional(string, null)
    password_secret_name = optional(string, null)
    identity             = optional(string, null)
  })
}

variable "secret" {
  description = "A list of secrets to be used in the container app."
  type        = object({
    name  = optional(string, null)
    value = optional(string, null)
  })
}

variable "identity" {
  description = "User assigned identity settings."
  type = object({
    type        = string
    identity_ids = list(string)
  })
  default = {
    type        = "UserAssigned"
    identity_ids = []
  }
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