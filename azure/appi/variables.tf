variable "name" {
  description = "Resource name"
  type        = string
}


variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Resource location"
  type        = string
}

variable "tags" {
  description = "Tags to assign to the resource."
  type        = map(string)
}

variable "app_insight_app_type" {
  description = "(Required) Specifies the type of Application Insights to create.."
  type        = string
  default     = "web"
}

variable "law_workspace_id" {
  description = "The ID of the Log Analytics Workspace."
  type        = string

}
