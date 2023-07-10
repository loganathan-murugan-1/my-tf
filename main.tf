#############################################################
#   VPC
#############################################################
module "vpc" {
  source = "./vpc"

  default_name   = var.default_name
  cidr           = var.cidr
  azs            = var.azs
  public_subnets = var.public_subnets
}

#############################################################
#   EC2
#############################################################
module "ec2" {
  source = "./ec2"

  instance_type = var.instance_type
  key_name      = var.key_name
  env           = var.env
  sonar-ami     = var.sonar-ami
  my-server-ami = var.my-server-ami
  default_name  = var.default_name
}

#############################################################
#   SECURITY GROUP
#############################################################
module "security_group" {
  source = "./security"

  default_name = var.default_name
}

#############################################################
#   EKS
#############################################################
module "eks" {
  source = "./eks"

  default_name    = var.default_name
  node_group_name = var.node_group_name
  capacity_type   = var.capacity_type
  disk_size       = var.disk_size
  instance_types  = var.instance_types
  ec2_ssh_key     = var.ec2_ssh_key
  env             = var.env
  desired_size    = var.desired_size
  max_size        = var.max_size
  min_size        = var.min_size
  max_unavailable = var.max_unavailable
}

