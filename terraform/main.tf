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
  source          = "./modules/eks"
  kubernetes_version = "1.21"
  subnet_ids         = module.vpc.private_subnets
  vpc_id             = module.vpc.vpc_id
  ami_id             = "AL2_x86_64"
  instance_types     = ["t3.medium"]
  aws_region         = "eu-west-2"  # Pass the region
}
