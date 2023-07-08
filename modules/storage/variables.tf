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

#Define internal variable for the storage account name
variable "storage_account_name" {
  description = "Name of the Storage account"
  type        = string
}

#Define internal variable for the Storage private endpoint name
variable "storage_private_endpoint_name" {
  description = "Name of the Storage private endpoint"
  type        = string
}

#Define internal variable for the Storage private endpoint connection name
variable "storage_private_endpoint_connection_name" {
  description = "Name of the Storage private endpoint connection"
  type        = string
}

#Define internal variable for the compute subnet ID
variable "compute_subnet_id" {
  description = "ID of the compute subnet"
  type        = string
}