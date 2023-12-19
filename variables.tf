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
variable "target_node" {
  type = string
}

variable "vm_name" {
  type = string
}

variable "cores" {
  type = number
}

variable "memory" {
  type = number
}

variable "ciuser" {
  type = string
  default = "absentadmin"
}

variable "cipassword" {
  type = string
  default = ""
  
}

variable "tags" {
  type = string
  default = "terraform,automation"
}
variable "sshkey" {
  type = string
  default = ""
}
variable "ipconfig0" {
  type = string
}

variable "disk_size" {
  type = string
  default = "10G"
}

variable "network_tag" {
  type = number
  default = 0
}
variable "pool" {
  type = string
  default = "Unassigned"
}

variable "vm_description" {
  type = string
  default = "Created by Terraform"
}
  
variable "cloneTemplate" {
  type = string
  default = "UbuntuTemp"
}
  
variable "vmid" {
  type = number
  default = 0
}
variable "proxmox_api_url" {
  type = string
}

variable "proxmox_api_token_id" {
  type = string
}

variable "proxmox_api_token_secret" {
  type = string
}
