
variable "subnet_ids" {
  type = list(string)
}

variable "vpc_id" {
  type        = string
  description = "VPC ID for the EKS cluster"
}

variable "kubernetes_version" {
  type = string
}

variable "ami_id" {
  type = string
}

variable "instance_types" {
  type = list(string)
} 

variable "aws_region" {
  type        = string
  description = "AWS region for the EKS cluster"
} 
