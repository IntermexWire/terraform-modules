variable "scope" {
  description = "The scope at which the role assignment applies (e.g., resource group ID)."
  type        = string
}

variable "role_definition_name" {
  description = "The name of the role to assign (e.g., 'Contributor')."
  type        = string
}

variable "principal_id" {
  description = "The object ID of the user or service principal to assign the role to."
  type        = string
}
