output "service1_repository_url" {
  value = aws_ecr_repository.service1.repository_url
}

output "service2_repository_url" {
  value = aws_ecr_repository.service2.repository_url
}

output "service1_repository_arn" {
  value = aws_ecr_repository.service1.arn
}

output "service2_repository_arn" {
  value = aws_ecr_repository.service2.arn
}
