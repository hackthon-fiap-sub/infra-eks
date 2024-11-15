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
kubectl get pods -n selectgearmotors-ns
kubectl get deployments -n selectgearmotors-ns
kubectl get services -n selectgearmotors-ns



kubectl logs selectgearmotors-company-api -n selectgearmotors-ns

## Delete all Deployments in Namespace
kubectl delete deployments --all -n selectgearmotors-ns
kubectl delete deployment selectgearmotors-client-api -n selectgearmotors-ns --force --grace-period=0
kubectl delete service api-gateway-transaction-service -n selectgearmotors-ns

## Terraform Commands
terraform init
terraform plan
terraform apply
terraform destroy

## Health Check URLs
Actuator Health 1: http://ace3d7eb1f5594fec94ee29b54601f65-472644001.us-east-1.elb.amazonaws.com:31207/actuator/health
Actuator Health 2: http://ace3d7eb1f5594fec94ee29b54601f65-472644001.us-east-1.elb.amazonaws.com:9914/actuator/health


aws eks --region <region> update-kubeconfig --name <cluster-name>
http://a7945bcad40ee461c99efe301fa0a9a2-e5fcb929e7657ae8.elb.us-east-1.amazonaws.com:9914/api/swagger-ui/index.html

 rogerio.tomaz@ulife.com.br
 #HNTzheB3&w5KYes$


aws servicediscovery create-private-dns-namespace --name selectgearmotors.local --vpc vpc-04308bc5185e0f872

 ===
 $ aws servicediscovery create-private-dns-namespace --name selectgearmotors.local --vpc vpc-04308bc5185e0f872
{
    "OperationId": "fzvi7axn6rakz5qznqszykxemmiaouq6-5rlm0cby"
}


aws servicediscovery list-namespaces


aws servicediscovery list-services --filters Name=NAMESPACE_ID,Values=ns-fh5y2qeli4nse5q3
