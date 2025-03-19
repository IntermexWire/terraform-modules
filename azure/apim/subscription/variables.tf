variable "api_management_name" {
  description = "The name of the API Management service."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "product_id" {
  description = "The product ID associated with the subscription."
  type        = string
}

variable "user_id" {
  description = "The user ID associated with the subscription."
  type        = string
}

variable "display_name" {
  description = "The display name of the subscription."
  type        = string
}

variable "state" {
  description = "The state of the subscription."
  type        = string
  default     = "active"
}

variable "user_first_name" {
  description = "The first name of the user."
  type        = string
}

variable "user_last_name" {
  description = "The last name of the user."
  type        = string
}

variable "user_email" {
  description = "The email of the user."
  type        = string
}

variable "user_state" {
  description = "The state of the user."
  type        = string
  default     = "active"
}

variable "allow_tracing" {
  description = "Allow tracing for the subscription."
  type        = bool
  default     = false
  
}