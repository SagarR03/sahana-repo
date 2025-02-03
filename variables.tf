variable "resource_group_name" {
  description = "The name of the AWS resource group"
  type        = string
}

variable "resource_group_description" {
  description = "The description of the AWS resource group"
  type        = string
  default     = "Managed by Terraform - Updated"
}

variable "resource_query_resource_type_filter" {
  description = "The resource query as a JSON string"
  type        = string
  default     = "AWS::S3::Bucket"
}

variable "resource_query_tag_key" {
  description = "The key for the tag filter in the resource query"
  type        = string
  default     = "Project"
}

variable "resource_query_tag_values" {
  description = "The values for the tag filter in the resource query"
  type        = list(string)
  default     = ["Development"]
}

variable "resource_query_type" {
  description = "The resource query as a JSON string"
  type        = string
  default     = "CLOUDFORMATION_STACK_1_0"
}

variable "resource_group_tags" {
  description = "Tags for the AWS resource group"
  type        = map(string)
  default     = {
    Environment = "Development"
    Project     = "updated-project"
  }
}
