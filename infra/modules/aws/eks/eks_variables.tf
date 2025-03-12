
####################
####  VARIABLES ####
####################

variable "cluster_name" {
  description = "cluster name for EKS"
  type        = string
}
variable "cluster_version" {
  description = "version"
  type        = string   
}
variable "vpc_id" {
  description = "vpc_id"
  type        = string
}
variable "subnet_ids" {
  description = "personal list of subnets ids"
  type = list(string)
}
variable "node_group_name" {
  description = "node group name"
  type        = string
}
variable "node_instance_type" {
  description = "node instance type"
  type        = string 
}
variable "desired_capacity" {
  description = "desired capacity"
  type        = string  
}
variable "min_size" {
  description = "min desired capacity"
  type        = string  
}
variable "max_size" {
  description = "max size capacity"
  type        = string
}
