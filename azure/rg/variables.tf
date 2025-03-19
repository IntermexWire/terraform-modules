variable "name" {
  description = "Resource name"
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
