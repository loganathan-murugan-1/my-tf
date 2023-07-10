data "aws_vpc" "vpc" {
  tags = {
    Name = "${var.default_name}-vpc"
  }
}
