terraform {
  # This block configures and defines the Terraform provider used in this configuration.
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.63.0"
    }
  }
  # The Terraform State File will be stored in a private backend, using a Storage Account"
  backend "azurerm" {
    resource_group_name  = "rg-tfstate-westeu-001"
    storage_account_name = "stgitopsterraformstate1"
    container_name       = "tfstate"
    key                  = "prod.tfstate"
  }
}

# We need to skip the provider registration, as we are using a private backend, 
# and we want providers to be manually registered within Azure.
provider "azurerm" {
  features {}
  skip_provider_registration = true
}

# First, create an Azure RG to deploy the resources into
module "resource-group" {
  source = "../../modules/resource-group"

  resource_group_name = var.resource_group_name
  location            = var.location
}

# Now, create an Azure VNet to manage the traffic between the resources
module "network" {
  source = "../../modules/network"

  resource_group_name             = module.resource-group.resource_group_name
  location                        = var.location
  vnet_name                       = var.vnet_name
  vnet_address_space              = var.vnet_address_space
  subnet_compute_name             = var.subnet_compute_name
  subnet_compute_address_prefixes = var.subnet_compute_address_prefixes
}

# Now, deploy the Storage stack for the demo
module "storage" {
  source = "../../modules/storage"

  location                                 = var.location
  resource_group_name                      = module.resource-group.resource_group_name
  storage_account_name                     = var.storage_account_name
  storage_account_secondary_name           = var.storage_account_secondary_name
  storage_private_endpoint_name            = var.storage_private_endpoint_name
  storage_private_endpoint_connection_name = var.storage_private_endpoint_connection_name
  compute_subnet_id                        = module.network.subnet_compute_id
}

# Next, define and deploy some Azure VM's
module "virtual-machines" {
  source = "../../modules/virtual-machines"

  resource_group_name = module.resource-group.resource_group_name
  location            = var.location
  compute_subnet_id   = module.network.subnet_compute_id
  vm_size             = var.vm_size
  vm_admin_username   = var.vm_admin_username
  vm_admin_password   = var.vm_admin_password
  vm1_name            = var.vm1_name
  vm2_name            = var.vm2_name
  vm1_nic_name        = var.vm1_nic_name
  vm2_nic_name        = var.vm2_nic_name
}