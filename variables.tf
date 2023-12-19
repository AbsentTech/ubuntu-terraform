variable "region" {
  default = "eu-west-1"
}

variable "vpc_cidr" {
  type = string
  description = "The allowed block size is between a /28 netmask and /16 netmask"
  default = "10.0.0.0/16"
}

variable "subnet_cidr" {
  type = map(string)
  description = "Don't change this without first changing vpc_cidr"
  default = {
    be1 = "10.0.0.0/24"
    be2 = "10.0.1.0/24"
    fe1 = "10.0.2.0/24"
    fe2 = "10.0.3.0/24"
  }
}

variable "vpc_name" {
  type    = string
  description = "Set VPC name without special characters"
  default = "name"
}
