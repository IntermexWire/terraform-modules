resource "azurerm_service_plan" "service_plan" {
  for_each             = var.create ? toset(var.locations) : []
  name                 = var.name
  location             = each.key
  resource_group_name  = var.resource_group_name
  os_type              = var.os_type
  sku_name             = var.sku_name
  worker_count = var.worker_count

  tags = var.tags
}