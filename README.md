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
 
## Steps and Modules role
  - From AWS account console, create a [custom VPC](https://docs.aws.amazon.com/vpc/latest/userguide/create-vpc.html#create-vpc-vpc-only) and [S3 bucket](https://docs.aws.amazon.com/AmazonS3/latest/userguide/creating-bucket.html) .
  - Configure AWS CLI `aws configure` with access key, secret access key and region.
  - In provider.tf file :
    - specify the `source` , `region` and `version` for the cloud provider.
    - choose S3 bucket as the backend to store `terraform.tfstate` file.
    
  Each Module that was mentioned above has a certain role to achieve
  ### Network Module do the following:
   - Reference the VPC, Create 2 private and 1 public subnets.
   - Create internet Gateway. 
   - Create route table with its association between the public subnet and internet Gateway.
   - Create a subnet group of the private subnets.
  ### APP Module do the following:
   - Create a security group to allow HTTP/s traffic.
   - Create EC2 instance (will be attached to the public subnet which was created in the Netwok module).
   - Attach the security group to the EC2 instance.
  ### RDS Module do the following:
   - Create a security group to allow the access from the EC2's security group only.
   - Create RDS instance (will be attached to the private subnet group which was created in the Netwok module).
   - Attach the security group to the RDS instance.
  > - `main.tf` file contains the reference for each module( `repo URL` and `variables` )
  > - `output.tf` file in each module, allow passing values from a module to variables in another module

## Project RUN
   1. `terraform init` intialize the project with all required modules and files of the cloud provider. 
   2. `terraform plan` validate all resources (dry-run technique). 
   3. `terraform apply` Create all resources (the real effect). 


