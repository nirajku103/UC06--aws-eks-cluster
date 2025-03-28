region = "eu-west-2"
vpc_cidr_block = "10.0.0.0/16"
public_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
public_subnet_azs = ["eu-west-2a", "eu-west-2c"]
private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]
private_subnet_azs = ["eu-west-2a", "eu-west-2c"]

cluster_name = "healthcare-app-cluster"