resource "azurerm_key_vault_access_policy" "access_policy" {
  key_vault_id   = var.key_vault_id
  tenant_id      = var.tenant_id
  object_id      = var.object_id
  application_id = var.application_id

  key_permissions         = var.key_permissions
  secret_permissions      = var.secret_permissions
  certificate_permissions = var.certificate_permissions

}