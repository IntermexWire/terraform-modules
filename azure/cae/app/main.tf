resource "azurerm_container_app" "cae_app" {
  name                = var.name
  resource_group_name = var.resource_group_name

  container_app_environment_id = var.container_app_environment_id
  revision_mode                = var.revision_mode
  workload_profile_name        = var.workload_profile_name

  ingress {
    allow_insecure_connections = var.ingress.allow_insecure_connections
    external_enabled           = var.ingress.external_enabled
    target_port                = var.ingress.target_port
    client_certificate_mode    = var.ingress.client_certificate_mode
    transport                  = var.ingress.transport
    traffic_weight {
      percentage      = var.ingress.traffic_weight_percentage
      revision_suffix = var.ingress.revision_suffix
      latest_revision = var.ingress.latest_revision
    }
  }

  template {
    container {
      name   = var.container.name
      image  = var.container.image
      cpu    = var.container.cpu
      memory = var.container.memory
      dynamic "env" {
        for_each = var.container.env != null ? var.container.env : []
        content {
          name  = env.value.name
          value = env.value.value
        }
      }
    }

    dynamic "readiness_probe" {
      for_each = var.container.readiness_probe == null ? [] : [var.container.readiness_probe]
      content {
        http_get {
          path = readiness_probe.value.http_get.path
          port = readiness_probe.value.http_get.port
        }
        initial_delay_seconds = try(readiness_probe.value.initial_delay_seconds, null)
        period_seconds        = try(readiness_probe.value.period_seconds, null)
        timeout_seconds       = try(readiness_probe.value.timeout_seconds, null)
        failure_threshold     = try(readiness_probe.value.failure_threshold, null)
        success_threshold     = try(readiness_probe.value.success_threshold, null)
      }
    }

    dynamic "liveness_probe" {
      for_each = var.container.liveness_probe == null ? [] : [var.container.liveness_probe]
      content {
        http_get {
          path = liveness_probe.value.http_get.path
          port = liveness_probe.value.http_get.port
        }
        initial_delay_seconds = try(liveness_probe.value.initial_delay_seconds, null)
        period_seconds        = try(liveness_probe.value.period_seconds, null)
        timeout_seconds       = try(liveness_probe.value.timeout_seconds, null)
        failure_threshold     = try(liveness_probe.value.failure_threshold, null)
        success_threshold     = try(liveness_probe.value.success_threshold, null)
      }
    }

    dynamic "startup_probe" {
      for_each = var.container.startup_probe == null ? [] : [var.container.startup_probe]
      content {
        http_get {
          path = startup_probe.value.http_get.path
          port = startup_probe.value.http_get.port
        }
        initial_delay_seconds = try(startup_probe.value.initial_delay_seconds, null)
        period_seconds        = try(startup_probe.value.period_seconds, null)
        timeout_seconds       = try(startup_probe.value.timeout_seconds, null)
        failure_threshold     = try(startup_probe.value.failure_threshold, null)
        success_threshold     = try(startup_probe.value.success_threshold, null)
      }
    }

    min_replicas = var.min_replicas
    max_replicas = var.max_replicas
  }



  dynamic "secret" {
    for_each = var.secret != null ? [var.secret] : []
    content {
      name  = secret.value.name
      value = secret.value.value
    }
  }

  dynamic "registry" {
    for_each = var.registry != null ? [var.registry] : []
    content {
      server               = registry.value.server // Ensure server is defined
      username             = registry.value.username
      password_secret_name = registry.value.password_secret_name
      identity             = registry.value.identity
    }
  }

  dynamic "identity" {
    for_each = var.identity != null ? [var.identity] : []
    content {
      type         = identity.value.type
      identity_ids = identity.value.identity_ids
    }

  }

  tags = var.tags
}
