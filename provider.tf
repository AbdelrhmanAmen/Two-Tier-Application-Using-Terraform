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
        region = var.region
    }
}

provider "aws" {
    region = var.region
}