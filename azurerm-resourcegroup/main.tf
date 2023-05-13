resource "azurerm_resource_group" "resourcegroup" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    "Application"       = var.tag_application
    "Environment"       = var.tag_environment
    "Technical Contact" = var.tag_tech_contact
  }
}
