# import the network 
module "network-module" {
    source = "../network-module/"
    author=var.author
    public-subnets=var.public-subnets
    private-subnets=var.private-subnets
    vpc=var.vpc
}

module "app-module" {
    source = "../app-module"
    type=var.author
    image=var.image
    vpc=var.vpc
    author = var.author
    subnet_id = module.network-module.public
    depends_on = [
        module.network-module 
    ]
}