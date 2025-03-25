resource "azurerm_container_app_environment" "cae" {
  name                               = var.name
  resource_group_name                = var.resource_group_name
  location                           = var.location
  logs_destination                   = var.logs_destination
  log_analytics_workspace_id         = var.log_analytics_workspace_id
  infrastructure_subnet_id           = var.infrastructure_subnet_id
  internal_load_balancer_enabled     = var.internal_load_balancer_enabled
  infrastructure_resource_group_name = var.infrastructure_resource_group_name

  workload_profile {
    name                  = var.workload_profile.name
    workload_profile_type = var.workload_profile.workload_profile_type
    minimum_count         = var.workload_profile.minimum_count
    maximum_count         = var.workload_profile.maximum_count
  }

  tags = var.tags
}

