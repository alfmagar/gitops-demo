#Define main VNet for the demo
resource "azurerm_virtual_network" "demo-vnet" {
  name                = var.vnet_name
  address_space       = var.vnet_address_space
  location            = var.location
  resource_group_name = var.resource_group_name
}

#Define compute subnet for VM's on the demo
resource "azurerm_subnet" "demo-subnet-compute" {
  name                 = var.subnet_compute_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.demo-vnet.name
  address_prefixes     = var.subnet_compute_address_prefixes
}