resource "azuredevops_environment" "adoenv" {
  project_id       = var.TeamProjectId
  name             = var.azuredevops_environment_name == "" ? format("%s-%s","api-app-name", var.environment) : var.azuredevops_environment_name
  description      = "Environment Created by Terraform"
}