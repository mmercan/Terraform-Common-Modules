resource "azuredevops_variable_group" "adovar" {
  project_id       = var.TeamProjectId
  name             = var.azuredevops_variable_group_name == "" ? format("%s_%s","secrets_api-app-name", var.environment) : var.azuredevops_variable_group_name
  description      = "Variable Group Created by Terraform"
  allow_access     = true

    variable {
      name         = "keyvault_url"
      value        = module.application-key-vault.vault_uri
    }

    variable {
      name         = "appinsights_key"
      value        = module.appinsights.instrumentation_key
    }

    variable {
      name         = "appinsights_connection_string"
      value        = module.appinsights.connection_string
      // secret_value =var.namespace_name
      // is_secret    = true
    }
    
    variable {
      name         = "namespace_name"
      value        = var.namespace_name
    }

      depends_on = [module.application-key-vault, module.appinsights]
}