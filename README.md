# Two-Tier-Application-Using-Terraform
## What Is Terraform ?
Terraform is an infrastructure as code tool (IAC) that lets you build, change, and version cloud and on-prem resources safely and efficiently.

## Purpose
> - Create and provision resources from any cloud provider (In our situation it would be AWS).
> - Integrate with other modules, that have been already created and shared on github.

## Desired Architecture
![aws-draw](https://user-images.githubusercontent.com/73068684/223009783-b9c96e17-36b3-4ead-8e42-9140e4194848.PNG)

## Prerequisite
 - Install [Terraform](https://developer.hashicorp.com/terraform/downloads)
 - AWS account (you might consider using [Free Tier](https://aws.amazon.com/free/?all-free-tier.sort-by=item.additionalFields.SortRank&all-free-tier.sort-order=asc&awsf.Free%20Tier%20Types=*all&awsf.Free%20Tier%20Categories=*all))
 - Install [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) for authentication with AWS config.
 
## Modules
> - [Terraform-Network-Module](https://github.com/AbdelrhmanAmen/Terraform-Network-Module)
> - [Terraform--Web-Application-Module](https://github.com/AbdelrhmanAmen/Terraform-Application-Module)
> - [Terraform-RDS-Module](https://github.com/AbdelrhmanAmen/Terraform-RDS-Module)
 
## Steps and Modules Description
  > - From AWS account console, create a custom VPC .
  > Each Module that was mentioned above has a certain role to achieve
  > -
 
