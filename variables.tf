variable "resource_group_name" {
  type        = string
  description = "(optional) describe your variable"
}

variable "location" {
  type        = string
  description = "(optional) describe your variable"
}

variable "allow_resource_only_permissions" {
  type        = bool
  description = "(optional) describe your variable"
}

variable "local_authentication_disabled" {
  type        = bool
  description = "(optional) describe your variable"
}

variable "sku" {
  type        = string
  description = "(optional) describe your variable"
}

variable "retention_in_days" {
  type        = number
  description = "(optional) describe your variable"
}

variable "daily_quota_gb" {
  type        = number
  description = "(optional) describe your variable"
}

variable "cmk_for_query_forced" {
  type        = bool
  description = "(optional) describe your variable"
}

variable "internet_ingestion_enabled" {
  type        = bool
  description = "(optional) describe your variable"
}

variable "internet_query_enabled" {
  type        = bool
  description = "(optional) describe your variable"
}

variable "reservation_capacity_in_gb_per_day" {
  type        = number
  description = "(optional) describe your variable"
  default = null
}

variable "data_collection_rule_id" {
  type        = string
  description = "(optional) describe your variable"
}

variable "immediate_data_purge_on_30_days_enabled" {
  type        = bool
  description = "(optional) describe your variable"
}

variable "tags" {
  type        = map(string)
  description = "(optional) describe your variable"
}

variable "naming_convention_info" {
  type        = map(string)
  description = "(optional) describe your variable"
}

variable "identity" {
  type = object({
    type         = string
    identity_ids = list(string)
  })
  description = "(optional) describe your variable"
}

