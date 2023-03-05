# import the network 
module "network-module" {
    source = "../network-module/"
    author=var.author
    public_subnets=var.public_subnets
    private_subnets=var.private_subnets
    vpc=var.vpc
}

module "app-module" {
    source = "../app-module"
    type=var.type
    image=var.image
    vpc=var.vpc
    author = var.author
    subnet_id = module.network-module.public
    depends_on = [
        module.network-module 
    ]
}