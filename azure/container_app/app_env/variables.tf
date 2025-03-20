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
  
}