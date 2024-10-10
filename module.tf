resource "azurerm_log_analytics_workspace" "azure_law" {
  name                                    = module.law_name.naming_convention_output[var.naming_convention_info.name].names.0
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
  tags                                    = var.tags

  identity {
    type         = var.identity.type
    identity_ids = var.identity.identity_ids
  }
}



