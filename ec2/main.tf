module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name                        = "Sonarqube_Server"
  ami                         = var.sonar-ami
  instance_type               = var.instance_type
  key_name                    = var.key_name
  vpc_security_group_ids      = [data.aws_security_groups.test.security_group_id]
  subnet_id                   = data.aws_subnet.public.id[0]
  associate_public_ip_address = true

  tags = {
    Project = "${var.default_name}-instance"
    Env     = var.env
  }
}

module "instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name                        = "My_Project"
  ami                         = var.my-server-ami
  instance_type               = var.instance_type
  key_name                    = var.key_name
  vpc_security_group_ids      = [data.aws_security_groups.test.security_group_id]
  subnet_id                   = data.aws_subnet.public.id[0]
  associate_public_ip_address = true

  tags = {
    Project = "${var.default_name}-instance"
    Env     = var.env
  }
}

module "ansible" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name                        = "ansible"
  ami                         = var.my-server-ami
  instance_type               = var.instance_type
  key_name                    = var.key_name
  vpc_security_group_ids      = [data.aws_security_groups.test.security_group_id]
  subnet_id                   = data.aws_subnet.public.id[0]
  associate_public_ip_address = true

  tags = {
    Project = "${var.default_name}-instance"
    Env     = var.env
  }
}
