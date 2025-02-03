# sahana-repo

## Argument Reference

This resource supports the following arguments:

- `name` - (Required) The resource group's name. A resource group name can have a maximum of 127 characters, including letters, numbers, hyphens, dots, and underscores. The name cannot start with AWS or aws.
- `configuration` - (Optional) A configuration associates the resource group with an AWS service and specifies how the service can interact with the resources in the group. See below for details.
- `description` - (Optional) A description of the resource group.
- `resource_query` - (Required) A resource_query block. Resource queries are documented below.
- `tags` - (Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.

The `resource_query` block supports the following arguments:

- `query` - (Required) The resource query as a JSON string.
- `type` - (Required) The type of the resource query. Defaults to `TAG_FILTERS_1_0`.

The `configuration` block supports the following arguments:

- `type` - (Required) Specifies the type of group configuration item.
- `parameters` - (Optional) A collection of parameters for this group configuration item. See below for details.

The `parameters` block supports the following arguments:

- `name` - (Required) The name of the group configuration parameter.
- `values` - (Optional) The value or values to be used for the specified parameter.