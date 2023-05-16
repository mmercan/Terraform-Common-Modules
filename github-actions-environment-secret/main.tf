resource "github_actions_environment_secret" "actions_environment_secret" {
  repository        = var.repository
  environment       = var.environment
  secret_name       = var.secret_name
  plaintext_value   = var.plaintext_value
}


# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_environment_secret