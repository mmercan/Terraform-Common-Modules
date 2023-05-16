resource "azuredevops_environment" "adoenv" {
  project_id       = var.TeamProjectId
  name             = var.environment_name 
  description      = var.description
}