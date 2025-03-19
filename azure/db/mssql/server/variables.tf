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

variable "sql_server_version" {
  description = "The version of the server."
  type        = string

}

variable "administrator_login" {
  description = "The administrator login name for the server."
  type        = string
}

variable "administrator_login_password" {
  description = "The administrator login password for the server."
  type        = string
  default     = " "
}

variable "minimum_tls_version" {
  description = "The minimum TLS version for the server."
  type        = string
  default     = "1.2"
}

variable "vnet_rule_name" {
  description = "The name of the virtual network rule."
  type        = string

}

variable "public_network_access_enabled" {
  description = "Whether or not public network access is allowed for this server."
  type        = bool
  default     = false
}

variable "snet_id" {
  description = "The subnet ID for the MSSQL server."
  type        = string
}