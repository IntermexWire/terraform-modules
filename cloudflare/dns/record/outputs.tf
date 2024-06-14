output "record_id" {
  value       = cloudflare_record.cname.id
  description = "The ID of the DNS record."
}

output "record_name" {
  value       = cloudflare_record.cname.name
  description = "The name of the DNS record."
}

output "record_type" {
  value       = cloudflare_record.cname.type
  description = "The type of the DNS record."
}

output "record_value" {
  value       = cloudflare_record.cname.value
  description = "The value of the DNS record."
}

output "record_proxied" {
  value       = cloudflare_record.cname.proxied
  description = "Indicates if the record is proxied through Cloudflare."
}

output "record_zone_id" {
  value       = cloudflare_record.cname.zone_id
  description = "The zone ID of the DNS record."
}

output "record_tags" {
  value       = cloudflare_record.cname.tags
  description = "The tags assigned to the DNS record."
}