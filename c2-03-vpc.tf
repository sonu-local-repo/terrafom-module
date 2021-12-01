module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.11.0"
  # insert the 21 required variables here

    name = "terraform-vpc-module"
    cidr = "10.0.0.0/16"

    azs             = ["${var.region}a", "${var.region}b"]
    private_subnets = ["10.0.101.0/24", "10.0.102.0/24"]
    public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
    database_subnets    = ["10.0.201.0/24", "10.0.202.0/24"]

  
    create_database_subnet_group = true

    manage_default_route_table = true

    enable_dns_hostnames = true
    enable_dns_support   = true
    enable_nat_gateway = true
    single_nat_gateway = true

    tags = var.common-tags
}