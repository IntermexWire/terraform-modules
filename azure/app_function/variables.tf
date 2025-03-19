variable "name" {
  description = "Name for the resource."
  type        = string
}

variable "location" {
  description = "Region location for the resource."
  type        = string
}

variable "resource_group_name" {
  description = "Resource group in which to create the resouce in."
  type        = string
}

variable "service_plan_id" {
  type        = string
  description = "Storage account id"
}

variable "virtual_network_subnet_id" {
  type        = string
  description = "Vnet subnet id"

}

variable "storage_account_name" {
  type        = string
  description = "Storage account name"
}

variable "storage_account_access_key" {
  type        = string
  description = "Storage account access key"

}


variable "site_config" {
  description = "Configuration for the site"
  type = object({
    always_on              = bool
    use_32_bit_worker      = bool
    vnet_route_all_enabled = bool
    application_stack = object({
      dotnet_version = string
    })
  })
  default = {
    always_on              = false
    use_32_bit_worker      = true
    vnet_route_all_enabled = false
    application_stack = {
      dotnet_version = "v8.0"
    }
  }
}

variable "app_settings" {
  description = "Application settings for the web app"
  type        = map(string)
  default     = {}
}


variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}