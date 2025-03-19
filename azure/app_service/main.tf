resource "azurerm_windows_web_app" "app_service" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = var.service_plan_id

  virtual_network_subnet_id = var.virtual_network_subnet_id

  site_config {
    always_on              = var.site_config.always_on
    use_32_bit_worker      = var.site_config.use_32_bit_worker
    vnet_route_all_enabled = var.site_config.vnet_route_all_enabled

    application_stack {
      current_stack  = var.site_config.application_stack.current_stack
      dotnet_version = var.site_config.application_stack.dotnet_version
    }

    virtual_application {
      virtual_path  = var.site_config.virtual_application.virtual_path
      physical_path = var.site_config.virtual_application.physical_path
      preload       = var.site_config.virtual_application.preload
    }
  }

  app_settings = {
    "APPINSIGHTS_INSTRUMENTATIONKEY" = var.app_settings.APPINSIGHTS_INSTRUMENTATIONKEY
    "ASPNETCORE_ENVIRONMENT"         = var.app_settings.ASPNETCORE_ENVIRONMENT
  }
}