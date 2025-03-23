terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  required_version = ">= 1.3.0"
}


terraform {
  backend "s3" {
    bucket         = "eks-state-bucket-uc06"
    key            = "terraform"
    region         = "eu-west-2"
    encrypt        = true
  }
}

