variable "name" {
  description = "The name of the Storage Account container."
  type        = string
}

variable "storage_account_name" {
  description = "The name of the Storage Account where the container will be created"
  type        = string
}

variable "container_access_type" {
  description = "The level of public access for the container (private, blob, container)"
  type        = string
  default     = "private"
}

variable "metadata" {
  description = "Metadata for the Storage Container"
  type        = map(string)
  default     = {}
}