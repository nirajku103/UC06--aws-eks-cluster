variable "repositories" {
  description = "List of ECR repositories to create"
  type        = list(string)
}

variable "force_delete" {
  description = "Whether to force delete ECR repositories"
  type        = bool
  default     = false
}