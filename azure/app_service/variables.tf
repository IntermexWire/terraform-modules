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
  description = "(optional) describe your variable"
}

variable "virtual_network_subnet_id" {
  type        = string
  description = "(optional) describe your variable"

}

variable "site_config" {
  description = "Configuration for the site"
  type = object({
    always_on              = bool
    use_32_bit_worker      = bool
    vnet_route_all_enabled = bool
    scm_type               = optional(string)
    application_stack = object({
      current_stack  = string
      dotnet_version = string
    })
    virtual_application = object({
      virtual_path  = string
      physical_path = string
      preload       = bool
    })
  })
  default = {
    always_on              = false
    use_32_bit_worker      = true
    vnet_route_all_enabled = false
    #scm_type               = "VSTSRM"
    application_stack = {
      current_stack  = "dotnet"
      dotnet_version = "v8.0"
    }
    virtual_application = {
      virtual_path  = "/"
      physical_path = "site\\wwwroot"
      preload       = true
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


