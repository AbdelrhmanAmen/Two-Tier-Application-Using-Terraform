# import the network 
module "network-module" {
    source        = "github.com/AbdelrhmanAmen/Terraform-Network-Module"

    author          =var.author
    public_subnets  =var.public_subnets
    private_subnets =var.private_subnets
    vpc             =var.vpc
}

# import web app module
module "app-module" {
    source    = "github.com/AbdelrhmanAmen/Terraform-Application-Module"

    type        =var.type
    image       =var.image
    vpc         =var.vpc
    author      = var.author
    subnet_id   = module.network-module.public
    depends_on  = [
        module.network-module 
    ]
}

# import rds module
module "data-module" {
    source                = "github.com/AbdelrhmanAmen/Terraform-RDS-Module"

    vpc                     =var.vpc
    author                  = var.author
    storage                 =var.storage
    skip_snapshot           =var.skip_snapshot
    instance_class          =var.instance_class
    engine                  =var.engine
    engine_version          =var.engine_version
    username                =var.username
    password                =var.password
    subnet_ids              = module.network-module.private
    app_security_group_id   = module.app-module.security-group-id
    depends_on              = [
        module.app-module,
        module.network-module
    ]
}