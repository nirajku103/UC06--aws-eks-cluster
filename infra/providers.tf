terraform {
  backend "s3" {
    bucket         = "eks-state-bucket-uc06"
    key            = "terraform"
    region         = "eu-west-2"
    encrypt        = true
  }
}

