resource "azurerm_resource_group" "demo_rg" {
  name     = var.resource_group_name
  location = var.location
}