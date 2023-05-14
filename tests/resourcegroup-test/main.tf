terraform {
  backend "azurerm" {}
}

provider "azurerm" {
  features {
  }
  skip_provider_registration = true
}

module "resource_group" {
  source               = "git::https://github.com/mmercan/Terraform-Common-Modules.git//azurerm-resourcegroup"
  resource_group_name  = var.resource_group_name
  location             = var.location
  tag_application      = var.tag_application
  tag_environment      = var.tag_environment
  tag_tech_contact     = var.tag_tech_contact
}



