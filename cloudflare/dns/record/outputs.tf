output "zone_id" {
  value       = cloudflare_dns_record.dns_record.zone_id
  description = "The zone ID of the DNS record."
}

output "name" {
  value       = cloudflare_dns_record.dns_record.name
  description = "The name of the DNS record."
}

output "type" {
  value       = cloudflare_dns_record.dns_record.type
  description = "The type of the DNS record."
}

output "content" {
  value       = cloudflare_dns_record.dns_record.content
  description = "The value of the DNS record."
}

output "ttl" {
  value       = cloudflare_dns_record.dns_record.ttl
  description = "The TTL of the DNS record."
}

output "proxied" {
  value       = cloudflare_dns_record.dns_record.proxied
  description = "Whether the DNS record is proxied through Cloudflare."
}

output "comment" {
  value       = cloudflare_dns_record.dns_record.comment
  description = "The comment associated with the DNS record."
}

output "tags" {
  value       = cloudflare_dns_record.dns_record.tags
  description = "The tags associated with the DNS record."
}