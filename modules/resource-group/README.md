# Resource Group module

This module creates the Resource Group to where GitOps demo resources are deployed.

All the code is written in Terraform, and resources are deployed on Microsoft Azure.

## Resources
This module deploys the following resources:

 - An Azure Resource Group

## Required vars

- resource_group_name: Name of the resource group.
- location: Azure region where the rg lives.