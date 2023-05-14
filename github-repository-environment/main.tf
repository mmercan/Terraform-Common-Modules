
resource "github_repository_environment" "example" {
  environment  = "example"
  repository   = github_repository.example.name
  reviewers {
    users = [data.github_user.current.id]
  }
  deployment_branch_policy {
    protected_branches          = true
    custom_branch_policies = false
  }
}


# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_environment