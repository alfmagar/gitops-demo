# Network module

This module creates the networking layer for the GitOps demo project

All the code is written in Terraform, and resources are deployed on Microsoft Azure.

## Resources
This module deploys the following resources:

 - Azure VNet
 - Azure "Compute" subnet, attached to the created VNet.

## Required vars

- resource_group_name: Name of the resource group to deploy elements.
- location: Azure region to where deploy resources.
- vnet_name: Name for the VNet.
- vnet_address_space: CIDR for the IP range to be used by the VNet. List format.
- subnet_compute_name: Name for the "compute" subnet resource.
- subnet_compute_address_prefixes: CIDR for the IP range to be used by the subnet. List format.