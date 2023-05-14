variable "location" {
  type        = string
  description = "The supported Azure location where the resource exists"
}

variable "resource_group_name" {
    type        = string
    description = "The name of the resource group in which to create the resource"
}

variable "application_insights_name" {
    type        = string
    description = "The name of the application insights resource"
}

variable "application_type" {
    type        = string
    description = "The type of Application Insights to create"
}
