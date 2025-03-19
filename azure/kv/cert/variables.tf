variable "name" {
  description = "Name for the resource."
  type        = string
}

variable "key_vault_id" {
  description = "The ID of the Key Vault."
  type        = string
}

variable "contents" {
  description = "The contents of the certificate."
  type        = string
  
}

variable "certificate_password" {
  description = "The password of the certificate."
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}


