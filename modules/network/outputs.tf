#Define output var for VNet ID
output "vnet_id" {
  value = azurerm_virtual_network.demo-vnet.id
}

#Define output var for compute subnet ID
output "subnet_compute_id" {
  value = azurerm_subnet.demo-subnet-compute.id
}