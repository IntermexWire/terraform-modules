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

variable "sku_name" {
  description = "The SKU name of the API Management Service."
  type        = string
}

variable "capacity" {
  description = "The size of the Redis cache to deploy."
  type        = number

}

variable "family" {
  description = "The SKU family to use for this Redis cache."
  type        = string

}

variable "minimum_tls_version" {
  description = "The minimum TLS version for the Redis cache."
  type        = string
  default     = "1.2"
}

variable "redis_cache_primary_access_key" {
  description = "The primary access key of the Redis cache instance."
  type        = string
  default     = " "
}

variable "redis_cache_primary_connection_string" {
  description = "The primary connection string of the Redis cache instance."
  type        = string
  default     = " "
}