#Define output variable for resource group name
output "resource_group_name" {
  value = azurerm_resource_group.demo_rg.name
}