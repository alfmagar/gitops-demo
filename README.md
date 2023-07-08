# GitOps-Demo

This repository contains the Terraform code and GitHub Actions configuration used in the Medium Article "[Deploying Cloud infrastructure, the GitOps way]()"

All the code is written in Terraform, and resources are deployed on Microsoft Azure.

## Project diagram
The following is the diagram representing all the elements deployed by the code defined within this repository.

![GitOps-Demo architecture diagram](assets/images/diagram.png)

Note: The red-rounded storage account is "optional" and is added/deleted to demonstrate the GitOps methodology fundamentals.

## Structure

![GitOps-Demo architecture diagram](assets/images/repo_structure.png)


The repository contains the main project files at root level, including:

 - [main.tf](main.tf): Contains the module calls and provider configuration.
 - [variables.tf](variables.tf): Contains all relevant and necessary vars for all resources.
 - [outputs.tf](outputs.tf): Generic file to include outputs from modules/resources.
 
 Then, at the "[modules](./modules/)" folder, are all the modules with resources defined on them. These modules can be reused and follows the following structure:
 
 - [network](./modules/network/README.md): Contains all necessary resources to deploy a VNet and a simple subnet inside this VNet.
 - [resource-group](./modules/resource-group/README.md): Contains a resource to create an Azure Resource Group.
 - [storage](./modules/storage/README.md): Defines a Storage Account, a container inside this account, and a private endpoint to the subnet defined in the network module.
 - [virtual-machines](./modules/virtual-machines/README.md): Contains all resources to deploy two Azure VM's, based on Ubuntu 22.04 LTS, their NIC's and connections to the subnet created in the network module.

All these resources are deployed using GitHub Actions, which configuration is specified in the "[.github](./.github/)" folder.

GitHub Actions uses private variables to handle sensible information such as those required by Terraform to interact with Azure.

The [.github](./.github/) folders contains a "[workflows](./.github/workflows)" subfolder which contains the following files:

- [apply.yaml](./.github/workflows/apply.yaml): This file, triggered when a Pull Request is merged into the main branch, specifies the GitHub Actions workflow to execute a Terraform apply command, deploying the resources declared in the repository.
- [plan.yaml](./.github/workflows/plan.yaml): This file, triggered when a Pull Request is created, executes a Terraform plan, and writes a comment in the PR explaining the results of it's execution.
- [destroy.yaml](./.github/workflows/destroy.yaml): This file, which can only be manually triggered, executes a Terraform destroy command, deleting all the resources defined in the repository.

The [assets](./assets) folder includes extra resources, such as Visio diagram files, exported PNG files for the diagrams, etc.

## Repository owner

This repository is created and maintained by [Alfonso Martínez García](https://github.com/alfmagar).