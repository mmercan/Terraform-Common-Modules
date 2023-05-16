
resource "github_repository_environment" "example" {
  environment  = var.environment
  repository   = var.repository
  reviewers {
    users = [data.github_user.current.id]
  }
  deployment_branch_policy {
    protected_branches          = true
    custom_branch_policies = false
  }
}


# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_environment