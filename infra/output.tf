output "alb_url" {
  value = module.alb.lb.dns_name
}

output "aws_iam_access_id" {
  value = module.ecr_ecs_ci_user.aws_iam_access_id
  sensitive = true
}

output "aws_iam_access_key" {
  value = module.ecr_ecs_ci_user.aws_iam_access_key
  sensitive = true
}

output "ecr_repo_url" {
  value = "${data.aws_caller_identity.current.account_id}.dkr.ecr.${var.aws_region}.amazonaws.com"
}

output "ecr_repo_path" {
  value = aws_ecr_repository.main.name
}

output "aws_region" {
  value = var.aws_region
}

output "postgresql_cluster_members" {
  description = "List of RDS Instances that are a part of this cluster"
  value       = module.aurora_postgresql.cluster_members
}

output "postgresql_cluster_endpoint" {
  description = "Writer endpoint for the cluster"
  value       = module.aurora_postgresql.cluster_endpoint
}

output "postgresql_cluster_reader_endpoint" {
  description = "A read-only endpoint for the cluster, automatically load-balanced across replicas"
  value       = module.aurora_postgresql.cluster_reader_endpoint
}

output "postgresql_cluster_port" {
  description = "The database port"
  value       = module.aurora_postgresql.cluster_port
}