provider "aws" {
  region = var.aws_region
}

# Obter informações de autenticação do cluster EKS
data "aws_eks_cluster_auth" "eks" {
  name = aws_eks_cluster.eks_cluster.name
}

provider "helm" {
  kubernetes {
    host                   = data.aws_eks_cluster.eks.endpoint
    cluster_ca_certificate = base64decode(data.aws_eks_cluster.eks.certificate_authority[0].data)
    token                  = data.aws_eks_cluster_auth.eks.token
  }
}

# Provedor Kubernetes
provider "kubernetes" {
  host                   = aws_eks_cluster.eks_cluster.endpoint
  token                  = data.aws_eks_cluster_auth.eks.token
  #client_certificate     = base64decode(aws_eks_cluster.kubeconfig_client_certificate)
  #client_key             = base64decode(aws_eks_cluster.kubeconfig_client_key)
  cluster_ca_certificate = base64decode(aws_eks_cluster.eks_cluster.certificate_authority[0].data)
}