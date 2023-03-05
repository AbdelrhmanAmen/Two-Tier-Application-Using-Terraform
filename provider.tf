terraform {
    required_providers {
        aws={
            source = "hashicorp/aws"
            version = "~>4.0"
        }
    }
    # change backend from local to S3 bucket
    backend "s3" {
        bucket = "abdelrhman-bucket"
        key    = "terraform.tfstate"
        region = "eu-west-3"
    }
}

provider "aws" {
    region = var.region
}