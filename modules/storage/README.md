# Storage module

This module creates the storage layer for the GitOps demo project.

All the code is written in Terraform, and resources are deployed on Microsoft Azure.

## Resources
This module deploys the following resources:

 - An Azure Storage Account
 - An Azure Storage container inside the Storage Account
 - An Azure Private Endpoint to connect the Storage Account with the subnet created in the network module.

## Required vars

- resource_group_name: Name of the resource group.
- location: Azure region where the rg lives.
- storage_account_name: Name for the Storage Account.
- storage_container_name: Name for the container inside the Storage Account.
- storage_private_endpoint_name: Name for the private endpoint.
- storage_private_endpoint_connection_name: Name for the connection made within the private endpoint.