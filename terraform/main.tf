provider "aws" {
  region = var.region
}

module "vpc" {
  source = "./modules/vpc"

  vpc_cidr_block    = var.vpc_cidr_block
  public_subnets    = var.public_subnets
  public_subnet_azs = var.public_subnet_azs
  private_subnets   = var.private_subnets
  private_subnet_azs = var.private_subnet_azs
}

module "ecr" {
  source = "./modules/ecr"
}

module "eks" {
  source             = "./modules/eks"
  region             = var.region
  cluster_name       = var.cluster_name
  private_subnet_ids = module.vpc.private_subnets
}