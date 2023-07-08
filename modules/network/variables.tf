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

#Define internal variable for VNet name
variable "vnet_name" {
  description = "Name of the VNet"
  type        = string
}

#Define internal variable for VNet address space
variable "vnet_address_space" {
  description = "Address space of the VNet"
  type        = list(string)
}

#Define internal variable for compute subnet name
variable "subnet_compute_name" {
  description = "Name of the compute subnet"
  type        = string
}

#Define internal variable for compute subnet address space
variable "subnet_compute_address_prefixes" {
  description = "Address prefixes for the compute subnet"
  type        = list(string)
}