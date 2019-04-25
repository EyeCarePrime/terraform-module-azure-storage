resource "azurerm_storage_account" "storage" {
  name                         = "${var.name}"
  resource_group_name          = "${var.resource_group_name}"
  location                     = "${var.location}"
  account_tier                 = "${var.account_tier}"
  account_replication_type     = "${var.account_replication_type}"
  account_kind                 = "${var.account_kind}"
  enable_https_traffic_only    = "${var.enable_https_traffic_only}"
  
  network_rules {
    virtual_network_subnet_ids = ["${var.virtual_network_subnet_ids}"]
    bypass                     = ["${var.bypass}"]
    default_action             = "${var.default_action}"
  }

  tags {
      Environment              = "${var.tag_environment}"
      Region                   = "${var.tag_region}"
      Product                  = "${var.tag_product}"
  }
}

output "name" {
 value                         = "${azurerm_storage_account.storage.name}"
}

output "primary_blob_endpoint" {
 value                         = "${azurerm_storage_account.storage.primary_blob_endpoint}"
}

output "primary_access_key" {
 value                         = "${azurerm_storage_account.storage.primary_access_key}"
}

output "secondary_access_key" {
 value                         = "${azurerm_storage_account.storage.secondary_access_key}"
}
