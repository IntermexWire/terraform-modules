variable "name" {
  description = "Name of the storage account"
  type        = string
}

variable "locations" {
  description = "Locations of the storage accounts"
  type        = list(string)
}

variable "resource_group_name" {
  description = "Name of the resource group where the storage account will be created"
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the storage account"
  type        = map(string)
  default     = {}
}

variable "create" {
  description = "Whether to create the storage account"
  type        = bool
  default     = true
}

variable "subnet_id" {
  description = "The ID of the subnet where the storage account will be secured"
  type        = string
}

variable "ip_rules" {
  description = "The list of whitelisted IP addresses"
  type        = list(string)
  default     = []
}

variable "account_tier" {
  description = "The storage account tier"
  type        = string
  default     = "Standard"
  
}

variable "account_replication_type" {
  description = "The storage account replication type"
  type        = string
  default     = "LRS"
  
}

variable "min_tls_version" {  
  description = "The minimum TLS version required for the storage account"
  type        = string
  default     = "TLS1_2"
  
}

variable "infrastructure_encryption_enabled" {
  description = "Whether to enable infrastructure encryption"
  type        = bool
  default     = true
  
}

variable "default_action" {
  description = "The default action for network rules"
  type        = string
  default     = "Deny"
  
}

variable "bypass" {
  description = "The list of bypass rules for network rules"
  type        = list(string)
  default     = ["AzureServices"]
  
}