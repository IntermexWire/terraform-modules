variable "key_vault_id" {
  description = "The ID of the Key Vault."
  type        = string
}

variable "tenant_id" {
  description = "The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault."
  type        = string
}

variable "object_id" {
  description = "The object ID of the principal to which the access policy applies."
  type        = string
  default     = null
}

variable "application_id" {
  description = "The application ID of the principal to which the access policy applies."
  type        = string
  default     = null

}

variable "key_permissions" {
  description = "The list of key permissions to assign to the access policy."
  type        = list(string)
}

variable "secret_permissions" {
  description = "The list of secret permissions to assign to the access policy."
  type        = list(string)
}

variable "certificate_permissions" {
  description = "The list of certificate permissions to assign to the access policy."
  type        = list(string)
}