variable "name" {
  description = "The name of the Container App Environment."
  type        = string
}

variable "container_app_environment_certificate_id" {
  description = "The ID of the container app environment certificate."
  type        = string
}

variable "container_app_id" {
  description = "The ID of the container app."
  type        = string
  
}

variable "certificate_binding_type" {
  description = "The type of certificate binding."
  type        = string
  default     = "SniEnabled"
  
}