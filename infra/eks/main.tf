module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "20.8.4"
  cluster_name    = "my-eks-cluster"
  cluster_version = var.kubernetes_version
  subnet_ids      = var.subnet_ids  # Pass as variable
  vpc_id          = var.vpc_id      # Pass as variable

  enable_irsa = true

  tags = {
    cluster = "demo"
  }

  eks_managed_node_group_defaults = {
    ami_type               = var.ami_id
    instance_types         = [var.instance_types]
    vpc_security_group_ids = [aws_security_group.all_worker_mgmt.id]
  }

  eks_managed_node_groups = {
    node_group = {
      min_size     = 2
      max_size     = 6
      desired_size = 2
    }
  }
} 