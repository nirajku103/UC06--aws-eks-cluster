
resource "aws_security_group" "all_worker_mgmt" {
  name        = "eks-worker-sg"
  description = "Security group for EKS worker nodes"
  vpc_id      = var.vpc_id  # Use the variable for the VPC ID

  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "eks-worker-sg"
  }
}
