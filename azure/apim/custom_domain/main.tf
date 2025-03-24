resource "azurerm_api_management_custom_domain" "hostname" {
  api_management_id = var.api_management_id

  gateway {
    host_name            = var.gateway_host_name
    key_vault_id         = var.key_vault_id
    certificate          = var.certificate
    certificate_password = var.certificate_password
  }

  developer_portal {
    host_name            = var.developer_portal_host_name
    key_vault_id         = var.key_vault_id
    certificate          = var.certificate
    certificate_password = var.certificate_password
  }

  management {
    host_name            = var.management_host_name
    key_vault_id         = var.key_vault_id
    certificate          = var.certificate
    certificate_password = var.certificate_password
  }

  scm {
    host_name            = var.scm_host_name
    key_vault_id         = var.key_vault_id
    certificate          = var.certificate
    certificate_password = var.certificate_password
  }

  timeouts {
    create = "90m"
    update = "90m"
  }
}