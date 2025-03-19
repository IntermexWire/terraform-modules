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

variable "action_group_short_name" {
  description = "Short name for the action group"
  type        = string

}