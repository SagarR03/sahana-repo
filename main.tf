resource "aws_resourcegroups_group" "main" {
  name        = var.resource_group_name
  description = var.resource_group_description
  resource_query {
    query = var.resource_query
    type  = var.resource_query_type
  }
  dynamic "configuration" {
    for_each = var.configuration
    content {
      type = configuration.value.type
      dynamic "parameters" {
        for_each = configuration.value.parameters
        content {
          name   = parameters.value.name
          values = parameters.value.values
        }
      }
    }
  }
  tags = var.resource_group_tags
}
