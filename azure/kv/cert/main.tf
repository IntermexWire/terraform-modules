resource "azurerm_key_vault_certificate" "cert" {
  name         = var.name
  key_vault_id = var.key_vault_id

  certificate {
    contents = filebase64(var.contents)
    password = var.certificate_password
  }

  tags = var.tags
}