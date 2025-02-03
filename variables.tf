variable "resource_group_name" {
  description = "The name of the AWS resource group"
  type        = string
}

variable "resource_group_description" {
  description = "The description of the AWS resource group"
  type        = string
  default     = "Managed by Terraform"
}

variable "resource_query" {
  description = "The resource query as a JSON string"
  type        = string
  default     = "{}"
}

variable "resource_query_type" {
  description = "The resource query as a JSON string"
  type        = string
  default     = "TAG_FILTERS_1_0"
}

variable "configuration" {
  description = "Configuration for the AWS resource group"
  type        = map(object({
    type       = string
    parameters = map(object({
      name   = string
      values = list(string)
    }))
  }))
  default = {}
}

variable "resource_group_tags" {
  description = "Tags for the AWS resource group"
  type        = map(string)
  default     = {
    Environment = "Test"
    Project     = "personal-project"
  }
}
