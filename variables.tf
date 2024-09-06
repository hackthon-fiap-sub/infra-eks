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