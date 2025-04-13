terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "5.3.0"
    }
  }
}


resource "cloudflare_dns_record" "dns_record" {
  zone_id = var.zone_id
  name    = var.name
  type    = var.type
  content = var.content
  ttl     = var.ttl
  proxied = var.proxied

  comment = var.comment

  tags = var.tags
}