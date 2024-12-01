variable "aws_region" {
  description = "Região AWS onde os recursos serão criados"
  type        = string
  default     = "us-east-1" # Substitua pela região desejada
}

variable "vpc_id" {
  description = "ID da VPC existente"
  type        = string
}

variable "subnet_ids" {
  description = "Lista de IDs das sub-redes na VPC existente"
  type        = list(string)
}

variable "eks_cluster_name" {
  description = "Nome do cluster EKS"
  type        = string
  default     = "selectgearmotors-eks-cluster"
}