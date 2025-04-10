variable "name" {
  description = "The name of the user-assigned identity."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the container app."
  type        = string
}

variable "location" {
  description = "The Azure region where the container app will be created."
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
}
