variable "region" {
  description = "The AWS region to deploy to"
  type        = string
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "public_subnets" {
  description = "The public subnets for the VPC"
  type        = list(string)
}

variable "public_subnet_azs" {
  description = "The Availability Zones for the public subnets"
  type        = list(string)
}

variable "private_subnets" {
  description = "The private subnets for the VPC"
  type        = list(string)
}

variable "private_subnet_azs" {
  description = "The Availability Zones for the private subnets"
  type        = list(string)
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "service2_image" {
  description = "The Docker image for service 1"
  type        = string
}

variable "service2_image" {
  description = "The Docker image for service 2"
  type        = string
}
