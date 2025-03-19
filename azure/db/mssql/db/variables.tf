variable "name" {
  description = "Resource name"
  type        = string
}


variable "tags" {
  description = "Tags to assign to the resource."
  type        = map(string)
}

variable "server_id" {
  description = "The ID of the SQL server to associate with this database."
  type        = string

}

variable "collation" {
  description = "The collation of the database."
  type        = string
  default     = "SQL_Latin1_General_CP1_CI_AS"
}

variable "license_type" {
  description = "The license type to apply for this database."
  type        = string
  default     = "LicenseIncluded"
}

variable "max_size_gb" {
  description = "The maximum size of the database in gigabytes."
  type        = number
  default     = 4
}

variable "read_scale" {
  description = "Enable read scale."
  type        = bool
  default     = false
}

variable "sku_name" {
  description = "The name of the SKU used by this database."
  type        = string
  default     = "S0"
}

variable "zone_redundant" {
  description = "Enable zone redundancy."
  type        = bool
  default     = false
}

variable "enclave_type" {
  description = "The type of enclave to enable for this database."
  type        = string
  default     = "Default"
}

variable "fqdn" {
  description = "The fully qualified domain name of the SQL Server."
  type        = string
}

