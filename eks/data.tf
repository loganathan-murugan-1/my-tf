data "aws_vpc" "vpc" {
  tags = {
    Name = "${var.default_name}-vpc"
  }
}

data "aws_subnet" "public" {
  availability_zone = var.region
  public_subnet_tags = {
    Name = "${var.default_name}-subnet-public"
  }
}

data "aws_security_groups" "test" {
  tags = {
    Name = "${var.default_name}-sg"
  }
}

