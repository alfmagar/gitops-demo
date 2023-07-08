#Define the name for the resource group
variable "resource_group_name" {
  description = "Name of the resource group for the demo"
  type        = string
  default     = "rg-demo-prod-westeu-001"
}

#Define the location for the resources
variable "location" {
  description = "Location for resources"
  type        = string
  default     = "westeurope"
}

#Define the name for the demo VNet
variable "vnet_name" {
  description = "Name of the VNet for the demo"
  type        = string
  default     = "vnet-demo-prod-westeu-001"
}

#Define the address space for the demo VNet
variable "vnet_address_space" {
  description = "Address space for the VNet for the demo"
  type        = list(string)
  default     = ["10.0.2.0/24"]
}

#Define the name for the compute demo subnet
variable "subnet_compute_name" {
  description = "Name of the second subnet for the demo"
  type        = string
  default     = "snet-compute-demo-prod-westeu-001"
}

#Define the address space for the compute demo subnet
variable "subnet_compute_address_prefixes" {
  description = "Address space for the second subnet for the demo"
  type        = list(string)
  default     = ["10.0.2.0/28"]
}

#Define the name for the storage account
variable "storage_account_name" {
  description = "Name of the storage account for the demo"
  type        = string
  default     = "stgitopsdemoprod001"
}

#Define the name for the optional secondary storage account
variable "storage_account_secondary_name" {
  description = "Name of the secondary storage account for the demo"
  type        = string
  default     = "stgitopsdemoprod002"
}

#Define the name for the storage private endpoint
variable "storage_private_endpoint_name" {
  description = "Name of the storage private endpoint for the demo"
  type        = string
  default     = "pe-storage-demo-prod-westeu-001"
}

#Define the name for the storage private endpoint connection
variable "storage_private_endpoint_connection_name" {
  description = "Name of the storage private endpoint connection for the demo"
  type        = string
  default     = "pe-conn-storage-demo-prod-westeu-001"
}

#Define the name for the first VM
variable "vm1_name" {
  description = "Name of the first VM for the demo"
  type        = string
  default     = "vm-demo1-prod-westeu-001"
}

#Define the name for the second VM
variable "vm2_name" {
  description = "Name of the second VM for the demo"
  type        = string
  default     = "vm-demo2-prod-westeu-001"
}

#Define the name for the first VM NIC
variable "vm1_nic_name" {
  description = "Name of the first VM NIC for the demo"
  type        = string
  default     = "nic-demo1-prod-westeu-001"
}

#Define the name for the second VM NIC
variable "vm2_nic_name" {
  description = "Name of the second VM NIC for the demo"
  type        = string
  default     = "nic-demo2-prod-westeu-001"
}

#Define the size for the VM's
variable "vm_size" {
  description = "Size of the VM's for the demo"
  type        = string
  default     = "Standard_B1ls"
}

#Define the admin username for the VM's
variable "vm_admin_username" {
  description = "Admin username for the VM's for the demo"
  type        = string
  default     = "demoadmin"
}

#Define the admin password for the VM's
variable "vm_admin_password" {
  description = "Admin password for the VM's for the demo"
  type        = string
  default     = "demopassword123!"
}