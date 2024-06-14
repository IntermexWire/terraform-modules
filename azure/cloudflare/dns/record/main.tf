resource "cloudflare_record" "verification_txt" {
  zone_id = var.zone_id
  name    = var.txt_name
  type    = "TXT" # Assuming TXT records specifically
  value   = var.txt_record_value

  tags = var.tags
}

resource "cloudflare_record" "cname" {
  zone_id = var.zone_id
  name    = var.cname_name
  value   = var.cname_record_value
  type    = "CNAME"
  proxied = var.proxied

  tags = var.tags
}