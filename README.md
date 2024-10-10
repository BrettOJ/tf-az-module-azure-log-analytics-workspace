Manages a Log Analytics (formally Operational Insights) Workspace.

## [Example Usage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace#example-usage)

```hcl
resource "azurerm_resource_group" "example" { name = "example-resources" location = "West Europe" } resource "azurerm_log_analytics_workspace" "example" { name = "acctest-01" location = azurerm_resource_group.example.location resource_group_name = azurerm_resource_group.example.name sku = "PerGB2018" retention_in_days = 30 }
```

## [Argument Reference](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace#argument-reference)

The following arguments are supported:

-   [`name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace#name) - (Required) Specifies the name of the Log Analytics Workspace. Workspace name should include 4-63 letters, digits or '-'. The '-' shouldn't be the first or the last symbol. Changing this forces a new resource to be created.
    
-   [`resource_group_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace#resource_group_name) - (Required) The name of the resource group in which the Log Analytics workspace is created. Changing this forces a new resource to be created.
    
-   [`location`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace#location) - (Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
    
-   [`allow_resource_only_permissions`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace#allow_resource_only_permissions) - (Optional) Specifies if the log Analytics Workspace allow users accessing to data associated with resources they have permission to view, without permission to workspace. Defaults to `true`.
    
-   [`local_authentication_disabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace#local_authentication_disabled) - (Optional) Specifies if the log Analytics workspace should enforce authentication using Azure AD. Defaults to `false`.
    
-   [`sku`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace#sku) - (Optional) Specifies the SKU of the Log Analytics Workspace. Possible values are `PerNode`, `Premium`, `Standard`, `Standalone`, `Unlimited`, `CapacityReservation`, and `PerGB2018` (new SKU as of `2018-04-03`). Defaults to `PerGB2018`.
    

-   [`retention_in_days`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace#retention_in_days) - (Optional) The workspace data retention in days. Possible values are either 7 (Free Tier only) or range between 30 and 730.
    
-   [`daily_quota_gb`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace#daily_quota_gb) - (Optional) The workspace daily quota for ingestion in GB. Defaults to -1 (unlimited) if omitted.
    

-   [`cmk_for_query_forced`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace#cmk_for_query_forced) - (Optional) Is Customer Managed Storage mandatory for query management?
    
-   [`identity`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace#identity) - (Optional) An `identity` block as defined below.
    
-   [`internet_ingestion_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace#internet_ingestion_enabled) - (Optional) Should the Log Analytics Workspace support ingestion over the Public Internet? Defaults to `true`.
    
-   [`internet_query_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace#internet_query_enabled) - (Optional) Should the Log Analytics Workspace support querying over the Public Internet? Defaults to `true`.
    
-   [`reservation_capacity_in_gb_per_day`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace#reservation_capacity_in_gb_per_day) - (Optional) The capacity reservation level in GB for this workspace. Possible values are `100`, `200`, `300`, `400`, `500`, `1000`, `2000` and `5000`.
    

-   [`data_collection_rule_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace#data_collection_rule_id) - (Optional) The ID of the Data Collection Rule to use for this workspace.
    
-   [`immediate_data_purge_on_30_days_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace#immediate_data_purge_on_30_days_enabled) - (Optional) Whether to remove the data in the Log Analytics Workspace immediately after 30 days.
    
-   [`tags`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace#tags) - (Optional) A mapping of tags to assign to the resource.
    

___

An `identity` block supports the following:

-   [`type`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace#type) - (Required) Specifies the identity type of the Log Analytics Workspace. Possible values are `SystemAssigned` (where Azure will generate a Service Principal for you) and `UserAssigned` where you can specify the Service Principal IDs in the `identity_ids` field.

-   [`identity_ids`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace#identity_ids) - (Optional) Specifies a list of user managed identity ids to be assigned. Required if `type` is `UserAssigned`.

## [Attributes Reference](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace#attributes-reference)

In addition to the Arguments listed above - the following Attributes are exported:

-   [`id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace#id) - The Log Analytics Workspace ID.
    
-   [`primary_shared_key`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace#primary_shared_key) - The Primary shared key for the Log Analytics Workspace.
    
-   [`secondary_shared_key`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace#secondary_shared_key) - The Secondary shared key for the Log Analytics Workspace.
    
-   [`workspace_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace#workspace_id) - The Workspace (or Customer) ID for the Log Analytics Workspace.
    

## [Timeouts](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace#timeouts)

The `timeouts` block allows you to specify [timeouts](https://www.terraform.io/language/resources/syntax#operation-timeouts) for certain actions:

-   [`create`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace#create) - (Defaults to 30 minutes) Used when creating the Log Analytics Workspace.
-   [`update`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace#update) - (Defaults to 30 minutes) Used when updating the Log Analytics Workspace.
-   [`read`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace#read) - (Defaults to 5 minutes) Used when retrieving the Log Analytics Workspace.
-   [`delete`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace#delete) - (Defaults to 30 minutes) Used when deleting the Log Analytics Workspace.

## [Import](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace#import)

Log Analytics Workspaces can be imported using the `resource id`, e.g.

```shell
terraform import azurerm_log_analytics_workspace.workspace1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.OperationalInsights/workspaces/workspace1
```