resource "azurerm_windows_web_app" "app_service" {
  for_each = var.create ? toset(var.locations) : []

  name                      = var.name
  location                  = each.key
  resource_group_name       = var.resource_group_name
  service_plan_id           = var.service_plan_id
  virtual_network_subnet_id = var.virtual_network_subnet_id

  site_config {
    always_on              = var.always_on
    use_32_bit_worker      = var.use_32_bit_worker
    vnet_route_all_enabled = var.vnet_route_all_enabled

    application_stack {
      current_stack  = var.current_stack
      dotnet_version = var.dotnet_version
    }

    virtual_application {
      virtual_path  = var.virtual_application.virtual_path
      physical_path = var.virtual_application.physical_path
      preload       = var.virtual_application.preload
    }

    /*
    # Dynamically include IP restrictions if any are provided
    dynamic "ip_restriction" {
      for_each = var.ip_restrictions
      content {
        ip_address                = ip_restriction.value.ip_address
        action                    = ip_restriction.value.action
        priority                  = ip_restriction.value.priority
        name                      = ip_restriction.value.name
        headers                   = lookup(ip_restriction.value, "headers", null)
        service_tag               = lookup(ip_restriction.value, "service_tag", null)
        virtual_network_subnet_id = lookup(ip_restriction.value, "virtual_network_subnet_id", null)
      }
    }
    */

  }

  app_settings = {
    "APPINSIGHTS_INSTRUMENTATIONKEY"             = var.appinsights_instrumentationkey
    #"APPLICATIONINSIGHTS_CONNECTION_STRING"      = var.applicationinsights_connection_string
    "ApplicationInsightsAgent_EXTENSION_VERSION" = var.applicationinsightsagent_extension_version
    "ASPNETCORE_ENVIRONMENT"                     = var.aspnetcore_environment
    "WEBSITE_ENABLE_SYNC_UPDATE_SITE"            = var.website_enable_sync_update_site
    "WEBSITE_RUN_FROM_PACKAGE"                   = var.website_run_from_package
  }

  /*
  # Conditionally include the connection_string block if all its sub-variables are provided
  dynamic "connection_string" {
    for_each = var.connection_string_name != null && var.connection_string_type != null && var.connection_string_value != null ? [1] : []
    content {
      name  = var.connection_string_name
      type  = var.connection_string_type
      value = var.connection_string_value
    }
  }
  */

  tags = var.tags
}

/*
resource "azurerm_app_service_custom_hostname_binding" "app_service" {
  for_each = var.enable_custom_hostname ? azurerm_windows_web_app.app_service : {}

  hostname            = each.value.custom_hostname
  app_service_name    = each.value.name
  resource_group_name = each.value.resource_group_name
}
*/