resource "aws_resourcegroups_group" "main" {
  name        = var.resource_group_name
  description = var.resource_group_description
  resource_query {
    query = jsonencode({
      ResourceTypeFilters = [var.resource_query_resource_type_filter],
      TagFilters = [
        {
          Key    = var.resource_query_tag_key
          Values = var.resource_query_tag_values
        }
      ]
    })
    type  = var.resource_query_type
  }
  tags = var.resource_group_tags
}
