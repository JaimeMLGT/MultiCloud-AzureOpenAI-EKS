# include {
#   path = find_in_parent_folders()
# }

terraform {
  source = "../infra/modules/aws/eks" # Apunta al módulo Terraform en /modules/aws/eks
}

inputs = {
  cluster_name   = "my-eks-cluster"
  cluster_version = "1.29"
  node_group_name  = "eks-nodes"
  vpc_id         = "put your personal vpc_id"
  subnet_ids = ["put your subnets", "put your subnets"]
  node_instance_type = "t4g.micro"
  desired_capacity  = 1
  min_size         = 1
  max_size         = 1
}