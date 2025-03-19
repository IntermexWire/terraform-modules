resource "azurerm_windows_function_app" "app_function" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = var.service_plan_id

  virtual_network_subnet_id  = var.virtual_network_subnet_id
  storage_account_name       = var.storage_account_name
  storage_account_access_key = var.storage_account_access_key

  site_config {
    always_on              = var.site_config.always_on
    use_32_bit_worker      = var.site_config.use_32_bit_worker
    vnet_route_all_enabled = var.site_config.vnet_route_all_enabled

    application_stack {
      dotnet_version = var.site_config.application_stack.dotnet_version
    }

  }
  app_settings = {
    "APPINSIGHTS_INSTRUMENTATIONKEY" = var.app_settings.APPINSIGHTS_INSTRUMENTATIONKEY
  }
}