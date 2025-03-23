
provider "aws" {
  region = "eu-west-2"
}

module "ecr" {
  source = "./infra/ecr"
}

module "vpc" {
  source  = "./infra/vpc"
  aws_region = "eu-west-2"
  vpc_cidr   = "10.0.0.0/16"
}


module "eks" {
  source          = "./modules/eks"
  cluster_name    = "healthcare-app-cluster"
  private_subnet_ids = module.vpc.private_subnets
  region         = "eu-west-2"
}
