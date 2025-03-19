variable "name" {
  description = "Resource name"
  type        = string
}

variable "zone_id" {
  description = "The ID of the Cloudflare zone to which the record will be added"
  type        = string
}

variable "content" {
  description = "TThe value of the DNS record"
  type        = string
}

variable "type" {
  description = "The type of the DNS record."
  type        = string
  
}

variable "ttl" {
  description = "The TTL of the DNS record."
  type        = number
  default     = 1
  
}


variable "proxied" {
  description = "Whether the record gets Cloudflare's origin protection"
  type        = bool
  default     = true
}

variable "comment" {
  description = "A comment for the DNS record."
  type        = string
  
}

variable "tags" {
  description = "Tags to assign to the resource."
  type        = list(string)
}