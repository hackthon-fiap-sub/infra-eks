# Outputs do cluster
output "eks_cluster_endpoint" {
  description = "O endpoint da API do cluster EKS"
  value       = aws_eks_cluster.eks_cluster.endpoint
}

output "eks_cluster_name" {
  description = "Nome do cluster EKS"
  value       = aws_eks_cluster.eks_cluster.name
}

output "cloudmap_namespace_name" {
  description = "Nome do Service Discovery Namespace no Cloud Map"
  value       = aws_service_discovery_private_dns_namespace.cloudmap_namespace.name
}

output "cloudmap_namespace_id" {
  description = "ID do Service Discovery Namespace no Cloud Map"
  value       = aws_service_discovery_private_dns_namespace.cloudmap_namespace.id
}