resource "azurerm_key_vault" "keyvault" {
  name                            = var.key_vault_name
  location                        = var.location
  resource_group_name             = var.resource_group_name
  sku_name                        = var.key_vault_sku
  tenant_id                       = var.tenant_id
  enabled_for_deployment          = var.deployment_enabled
  enabled_for_disk_encryption     = var.disk_encryption_enabled
  enabled_for_template_deployment = var.template_enabled
  enable_rbac_authorization       = var.enable_rbac_authorization
  purge_protection_enabled        = true
  soft_delete_retention_days      = var.soft_delete_retention_days

  network_acls {
    default_action             = "Deny"
    bypass                     = var.bypass
    ip_rules                   = var.ip_rules
    virtual_network_subnet_ids = var.subnet_ids
  }
}
