
variable "tags" {
  description = "A map of tags to assign to the resource group"
  type        = list(string)
  default     = []
}

variable "zone_id" {
  description = "The ID of the Cloudflare zone to which the record will be added"
  type        = string
}


variable "proxied" {
  description = "Whether the record gets Cloudflare's origin protection"
  type        = bool
  default     = true
}

variable "cname_name" {
  description = "The name of the CNAME record."
  type        = string
}

variable "txt_name" {
  description = "The name of the TXT record."
  type        = string
}

variable "cname_record_value" {
  description = "The value of the CNAME record."
  type        = string
}

variable "txt_record_value" {
  description = "The value of the TXT record."
  type        = string
}