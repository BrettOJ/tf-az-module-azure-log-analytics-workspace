locals {
  naming_convention_info = {
    project_code = "ai"
    env          = "env"
    zone         = "zone"
    tier         = "tier"
    name         = "name"
    agency_code  = "na"
  }
  tags = {
    environment = "Production"
  }

}
module "resource_groups" {
  source = "git::https://github.com/BrettOJ/tf-az-module-resource-group?ref=main"
  resource_groups = {
    1 = {
      name                   = var.resource_group_name
      location               = var.location
      naming_convention_info = local.naming_convention_info
      tags = {
      }
    }
  }
}

module "azurerm_log_analytics_workspace" {
  source                                  = "../"
  location                                = var.location
  resource_group_name                     = var.resource_group_name
  allow_resource_only_permissions         = var.allow_resource_only_permissions
  local_authentication_disabled           = var.local_authentication_disabled
  sku                                     = var.sku
  retention_in_days                       = var.retention_in_days
  daily_quota_gb                          = var.daily_quota_gb
  cmk_for_query_forced                    = var.cmk_for_query_forced
  internet_ingestion_enabled              = var.internet_ingestion_enabled
  internet_query_enabled                  = var.internet_query_enabled
  reservation_capacity_in_gb_per_day      = var.reservation_capacity_in_gb_per_day
  data_collection_rule_id                 = var.data_collection_rule_id
  immediate_data_purge_on_30_days_enabled = var.immediate_data_purge_on_30_days_enabled
  tags                                    = local.tags
  naming_convention_info                  = local.naming_convention_info

  identity = {
    type         = var.identity_type
    identity_ids = var.identity_identity_ids
  }
}