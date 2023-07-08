#Define internal variable for resource group name
variable "resource_group_name" {
  description = "Name of the resource group for the demo"
  type        = string
}

#Define internal variable for resource group location
variable "location" {
  description = "Location for resources"
  type        = string
}

#Define internal variable for compute subnet
variable "compute_subnet_id" {
  description = "ID of the compute subnet"
  type        = string
}

#Define internal variable for VM size
variable "vm_size" {
  description = "Size of the VM"
  type        = string
}

#Define internal variable for VM admin username
variable "vm_admin_username" {
  description = "Admin username for the VM"
  type        = string
}

#Define internal variable for VM admin password
variable "vm_admin_password" {
  description = "Admin password for the VM"
  type        = string
}

#Define internal variable for VM1 name
variable "vm1_name" {
  description = "Name of the first VM"
  type        = string
}

#Define internal variable for VM2 name
variable "vm2_name" {
  description = "Name of the second VM"
  type        = string
}

#Define internal variable for VM1 NIC name
variable "vm1_nic_name" {
  description = "Name of the first VM NIC"
  type        = string
}

#Define internal variable for VM2 NIC name
variable "vm2_nic_name" {
  description = "Name of the second VM NIC"
  type        = string
}