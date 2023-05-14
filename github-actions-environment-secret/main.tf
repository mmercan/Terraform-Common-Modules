resource "github_actions_environment_secret" "example_secret" {
  environment       = "example_environment"
  secret_name       = "example_secret_name"
  plaintext_value   = var.some_secret_string
}


# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_environment_secret