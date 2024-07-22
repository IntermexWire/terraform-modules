resource "azurerm_api_management" "apim" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  publisher_name      = var.publisher_name
  publisher_email     = var.publisher_email
  sku_name            = var.sku_name

  dynamic "additional_location" {
    for_each = [for loc in var.additional_locations : {
      location = loc
    } if loc != var.location]

    content {
      location = additional_location.value.location
    }
  }

  tags = var.tags
}