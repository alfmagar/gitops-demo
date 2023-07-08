#Define a basic Storage account with no public access
resource "azurerm_storage_account" "storage" {
  name                            = var.storage_account_name
  resource_group_name             = var.resource_group_name
  location                        = var.location
  account_tier                    = "Standard"
  account_replication_type        = "LRS"
  public_network_access_enabled   = false
  allow_nested_items_to_be_public = false
  enable_https_traffic_only       = true
  min_tls_version                 = "TLS1_2"
  tags = {
    environment = "demo"
  }
}

#Define a private endpoint for the storage account, so VM's can access it
resource "azurerm_private_endpoint" "storage" {
  name                = var.storage_private_endpoint_name
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.compute_subnet_id

  private_service_connection {
    name                           = var.storage_private_endpoint_connection_name
    private_connection_resource_id = azurerm_storage_account.storage.id
    subresource_names              = ["blob"]
    is_manual_connection           = false
  }
}