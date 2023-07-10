variable "default_name" {
  type = string
}

variable "cidr" {
  type = string
}

variable "azs" {
  type = list(any)
}

variable "public_subnets" {
  type = list(any)
}

variable "env" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "key_name" {
  type = string
}

variable "sonar-ami" {
  type = string
}

variable "my-server-ami" {
  type = string
}

variable "node_group_name" {
  type = string
}

variable "capacity_type" {
  type = string
}

variable "disk_size" {
  type = string
}

variable "instance_types" {
  type = list(any)
}

variable "ec2_ssh_key" {
  type = string
}

variable "desired_size" {
  type = number
}

variable "max_size" {
  type = number
}

variable "min_size" {
  type = number
}

variable "max_unavailable" {
  type = number
}
