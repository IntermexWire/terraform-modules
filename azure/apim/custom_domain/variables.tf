variable "api_management_id" {
  description = "The ID of the API Management service."
  type        = string

}

variable "key_vault_id" {
  description = "The ID of the Key Vault containing the SSL certificate."
  type        = string

}

variable "gateway_host_name" {
  description = "The host name for the gateway."
  type        = string
  default     = null
}

variable "developer_portal_host_name" {
  description = "The host name for the Delevoper Portal."
  type        = string
  default     = null
}

variable "management_host_name" {
  description = "The host name for the Management."
  type        = string
  default     = null
}

variable "scm_host_name" {
  description = "The host name for the SCM."
  type        = string
  default     = null

}

variable "certificate" {
  description = "The certificate for the custom domain."
  type        = string
  default     = null

}

variable "certificate_password" {
  description = "The password for the certificate."
  type        = string
  default     = null

}