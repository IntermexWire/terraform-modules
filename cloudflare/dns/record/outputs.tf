output "id" {
  value       = cloudflare_dns_record.dns_record.id
  description = "The ID of the DNS record."
}

output "name" {
  value       = cloudflare_dns_record.dns_record.name
  description = "The name of the DNS record."
}

output "record_type" {
  value       = cloudflare_dns_record.dns_record.type
  description = "The type of the DNS record."
}

output "record_content" {
  value       = cloudflare_dns_record.dns_record.content
  description = "The value of the DNS record."
}