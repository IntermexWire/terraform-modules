variable "name" {
  description = "Name of the Log Analytics Workspace"
  type        = string
}

variable "locations" {
  description = "Locations of the Log Analytics Workspaces"
  type        = list(string)
}

variable "resource_group_name" {
  description = "Name of the resource group where the Log Analytics Workspace"
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the Log Analytics Workspace"
  type        = map(string)
  default     = {}
}

variable "create" {
  description = "Whether to create the Log Analytics Workspace"
  type        = bool
  default     = true
}
variable "sku_name" {
  description = "The SKU name of the Log Analytics Workspace"
  type        = string
  default     = "PerGB2018"

}

variable "retention_in_days" {
  description = "(Optional) The workspace data retention in days. Possible values are either 7 (Free Tier only) or range between 30 and 730."
  type        = number
  default     = 30

}
