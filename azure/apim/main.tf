resource "azurerm_api_management" "apim" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name

  min_api_version = var.min_api_version
   sku_name = var.sku_name

  publisher_name      = var.publisher_name
  publisher_email     = var.publisher_email
 
  identity {
    type = var.identity_type
  }

  tags = var.tags
}

resource "azurerm_api_management_logger" "apim_logger" {
  name                = var.name
  api_management_name = var.name
  resource_group_name = var.resource_group_name

  application_insights {
    instrumentation_key = var.appi_instrumentation_key
  }
}