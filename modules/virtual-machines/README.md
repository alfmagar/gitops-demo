# Virtual Machines module

This module creates the VM layer for the GitOps demo project

All the code is written in Terraform, and resources are deployed on Microsoft Azure.

## Resources
This module deploys the following resources:

 - Two Azure NIC's
 - Two Azure VM's

## Required vars

- resource_group_name: Name of the resource group to deploy elements.
- location: Azure region to where deploy resources.
- compute_subnet_id: ID used by the subnet created in the network layer.
- vm_size: Azure VM size to be used by the deployed VM's.
- vm_admin_username: Name for the admin user of the VM's.
- vm_admin_password: Password for the admin user of the VM's.
- vm1_name/vm2_name: Name for both VM's.
- vm1_nic_name/vm2_nic_name: Name for the NIC's used by the VM's.