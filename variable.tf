variable "region" {
    type = string
}

variable "author" {
    description = "owner of the code"
    type = string
}

#network module

variable "vpc" {
    description = "availability zone"
    type = string 
}

variable "private_subnets" {
    type = map
    default = {
        subnet-1 = {
            az = "euw3-az1"
            cidr = "192.168.1.0/24"
        }
        subnet-2 = {
            az = "euw3-az2"
            cidr = "192.168.2.0/24"
        }
    }
}

variable "public_subnets" {
    type = map
    default = {
        subnet-3 = {
            az = "euw3-az3"
            cidr = "192.168.3.0/24"
        }
    }
}

# app module
variable "type" {
    description = "type of ec2 instance"
    type = string
}

variable "image" {
    description = "ami for the instance"
    type = string
}

# data module
variable storage{
    type = number
}

variable engine{
    type = string
}

variable "engine_version" {
    type = string
}

variable "instance_class" {
    type = string
}

variable "username" {
    type = string
}

variable "password" {
    type = string
}

variable "skip_snapshot" {
    type = bool
}

