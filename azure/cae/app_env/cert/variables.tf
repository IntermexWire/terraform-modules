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

variable "container_app_environment_id" {
  description = "The ID of the container app environment."
  type        = string
}

variable "certificate_blob_base64" {
  description = "The base64-encoded certificate blob."
  type        = string
  
}

variable "certificate_password" {
  description = "The password for the certificate."
  type        = string
  sensitive = true
  default = ""

  
}