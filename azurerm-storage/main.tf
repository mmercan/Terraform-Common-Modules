resource "azurerm_storage_account" "storage" {
  name                              = var.storage_account_name
  location                          = var.location
  resource_group_name               = var.resource_group_name
  account_kind                      = var.storage_type
  account_tier                      = var.account_tier
  account_replication_type          = var.replication
  access_tier                       = var.access_tier
  is_hns_enabled                    = var.hns_enabled
  min_tls_version                   = "TLS1_2"
  allow_nested_items_to_be_public   = var.public_nested_items
  infrastructure_encryption_enabled = var.infrastructure_encryption_enabled

  dynamic "network_rules" {
    for_each = var.allow_public_access ? [] : [1]
    content {
      default_action             = "Deny"
      ip_rules                   = var.ip_rules
      virtual_network_subnet_ids = var.subnet_ids
    }
  }

}
