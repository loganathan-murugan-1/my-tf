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

variable "env" {
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

variable "default_name" {
  type = string
}
