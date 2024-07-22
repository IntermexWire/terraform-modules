variable "resource_group_name" {
  description = "(Required) The name of the Resource Group in which the API Management Service should be exist. Changing this forces a new resource to be created."
  type        = string
}

variable "product_id" {
  type        = string
  description = "(Required) The Identifier for this Product, which must be unique within the API Management Service. Changing this forces a new resource to be created."
}

variable "display_name" {
  type        = string
  description = "(Required) The Display Name for this API Management Product."
}

variable "api_management_name" {
  type        = string
  description = "(Required) The name of the API Management Service. Changing this forces a new resource to be created."
}

variable "subscription_required" {
  type        = bool
  description = "(Optional) Is a Subscription required to access API's included in this Product? Defaults to true"
}

variable "approval_required" {
  type        = bool
  description = "(Optional) Do subscribers need to be approved prior to being able to use the Product?"
}

variable "published" {
  type        = bool
  description = " (Required) Is this Product Published?"
}
