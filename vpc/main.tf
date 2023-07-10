module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "${var.default_name}-vpc"
  cidr = var.cidr

  azs                     = var.azs
  public_subnets          = var.public_subnets
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.default_name}-vpc"
  }

  public_subnet_tags = {
    Name = "${var.default_name}-subnet-public"
  }
}
