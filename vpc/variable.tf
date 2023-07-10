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
