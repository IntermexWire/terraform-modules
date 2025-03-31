resource "azurerm_container_app" "cae_app" {
  name                         = var.name
  resource_group_name          = var.resource_group_name

  container_app_environment_id = var.container_app_environment_id
  revision_mode                = var.revision_mode
  workload_profile_name = var.workload_profile_name

  ingress {
    allow_insecure_connections = var.ingress_settings.allow_insecure_connections
    external_enabled           = var.ingress_settings.external_enabled
    target_port                = var.ingress_settings.target_port
    client_certificate_mode    = var.ingress_settings.client_certificate_mode
    traffic_weight {
      percentage      = var.ingress_settings.traffic_weight_percentage
      revision_suffix = var.ingress_settings.revision_suffix
      latest_revision = var.ingress_settings.latest_revision
    }
  }

  template {
    container {
      name   = var.container_settings.container_name
      image  = var.container_settings.image
      cpu    = var.container_settings.cpu
      memory = var.container_settings.memory
    }
  }

  tags = var.tags
}
