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

variable "service1_image" {
  description = "The Docker image for service 1"
  type        = string
}

variable "service2_image" {
  description = "The Docker image for service 2"
  type        = string
}

variable "kubernetes_version" {
  description = "Kubernetes version for EKS cluster"
  type        = string
  default     = "1.27"
}

variable "instance_types" {
  description = "Instance types for EKS worker nodes"
  type        = list(string)
  default     = ["t3.medium"]
}

variable "desired_size" {
  description = "Desired number of worker nodes"
  type        = number
  default     = 2
}

variable "max_size" {
  description = "Maximum number of worker nodes"
  type        = number
  default     = 3
}

variable "min_size" {
  description = "Minimum number of worker nodes"
  type        = number
  default     = 1
}

variable "disk_size" {
  description = "Disk size for worker nodes in GB"
  type        = number
  default     = 20
}

variable "environment" {
  description = "Environment name for tagging"
  type        = string
  default     = "dev"
}