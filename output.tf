# Outputs
output "eks_cluster_endpoint" {
  description = "O endpoint da API do cluster EKS"
  value       = aws_eks_cluster.eks_cluster.endpoint
}

output "eks_cluster_name" {
  description = "Nome do cluster EKS"
  value       = aws_eks_cluster.eks_cluster.name
}