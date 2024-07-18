variable "name" {
  description = "Name for the resource."
  type        = string
}

variable "locations" {
  description = "Locations of the app service plans"
  type        = list(string)
}

variable "resource_group_name" {
  description = "Resource group in which to create the resouce in."
  type        = string
}

variable "service_plan_id" {
  description = "The SKU name for the resouce."
  type        = string
}

variable "virtual_network_subnet_id" {
  description = "The subnet for the resouce."
  type        = string
}

variable "always_on" {
  description = "Always On setting for web app."
  type        = bool
}

variable "use_32_bit_worker" {
  description = "Use 32-bit worker setting for web app."
  type        = bool
}

variable "vnet_route_all_enabled" {
  description = "VNet Route All Enabled setting for web app."
  type        = bool
}

variable "current_stack" {
  description = "Current stack setting for web app."
  type        = string
}

variable "dotnet_version" {
  description = "DotNet version setting for web app."
  type        = string
}


variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
/*
variable "custom_hostname" {
  type        = string
  description = "(Optional) Specifies the Custom Hostname to use for the App Service"
  default     = null
}

variable "enable_custom_hostname" {
  description = "Set to true to enable custom hostname binding for the app service"
  type        = bool
  default     = false
}
*/


variable "appinsights_instrumentationkey" {
  description = "(Required) App insight setting instrumentation key."
  type        = string
}

/*
variable "applicationinsights_connection_string" {
  description = "(Required) App insight setting connection string."
  type        = string
}
*/

variable "applicationinsightsagent_extension_version" {
  description = "(Required) App insight setting agent extension version."
  type        = string
  default     = "~3"
}


variable "aspnetcore_environment" {
  description = "(Optional) App ASP .Net Core Env - defaults to Development"
  type        = string
  default     = "Development"
}

variable "website_enable_sync_update_site" {
  description = "(Optional) Enable website sync update - defaults to true"
  type        = string
  default     = "true"
}

variable "website_run_from_package" {
  description = "(Optional) Enable website to run from package - defaults to 1"
  type        = string
  default     = "1"
}

/*

variable "connection_string_name" {
  description = "(Optional) DB connection string name"
  type        = string
  default     = null
}

variable "connection_string_type" {
  description = "(Optional) DB connection string type"
  type        = string
  default     = null
}

variable "connection_string_value" {
  description = "(Optional) DB connection string value"
  type        = string
  default     = null
}


variable "ip_restrictions" {
  type = list(object({
    ip_address = string
    action     = string
    priority   = number
    name       = string
    headers = optional(list(object({
      header_name  = string
      header_value = string
    })))
    service_tag               = optional(string)
    virtual_network_subnet_id = optional(string)
  }))
  default     = []
  description = "List of IP restrictions for the App Service. Each restriction specifies an IP or a range, and the action is 'Allow' or 'Deny'."
}
*/

variable "create" {
  description = "Whether to create the app service plan"
  type        = bool
  default     = true
}
