resource "azurerm_storage_account" "storage1sep" {
  name                     = "storage1sep"
  resource_group_name      = "STGRG"
  location                 = "eastus"

  account_kind             = "StorageV2"
  account_tier             = "Standard"
  account_replication_type = "RAGRS"

  access_tier                  = "Hot"
  min_tls_version              = "TLS1_2"
  https_traffic_only_enabled   = true
  allow_nested_items_to_be_public = false
}