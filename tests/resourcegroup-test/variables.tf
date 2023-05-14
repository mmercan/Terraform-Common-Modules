variable "location" {
  type        = string
  description = "The Azure Region where the Resource Group should exist"
}

variable "resource_group_name" {
    type        = string
    description = "The Name which should be used for this Resource Group"
}

variable "tag_application" {
    type        = string
    description = "The application name for the application tag"
}

variable "tag_environment" {
    type        = string
    description = "The environment name for the environment tag"
}

variable "tag_tech_contact" {
    type        = string
    description = "The technical contact name for the technical contact tag"
}
