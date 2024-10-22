# Infra-eks

### EKS Cluster Information
- **EKS Cluster Endpoint**: `https://A14814DD003B972CF63C3719FBB86582.gr7.us-east-1.eks.amazonaws.com`
- **EKS Cluster Name**: `selectgearmotors-eks-cluster`

### Cluster Logging Setup
```bash
eksctl utils update-cluster-logging --enable-types all --region us-east-1 --cluster selectgearmotors-eks-cluster

## Update kubeconfig
aws eks update-kubeconfig --region us-east-1 --name selectgearmotors-eks-cluster

## Kubernetes Commands
kubectl get pods --all-namespaces
kubectl get services --all-namespaces
kubectl get deployments -n selectgearmotors-ns
kubectl get services -n selectgearmotors-ns

## Delete all Deployments in Namespace
kubectl delete deployments --all -n selectgearmotors-ns

## Terraform Commands
terraform init
terraform plan
terraform apply
terraform destroy

## Health Check URLs
Actuator Health 1: http://ace3d7eb1f5594fec94ee29b54601f65-472644001.us-east-1.elb.amazonaws.com:31207/actuator/health
Actuator Health 2: http://ace3d7eb1f5594fec94ee29b54601f65-472644001.us-east-1.elb.amazonaws.com:9914/actuator/health
