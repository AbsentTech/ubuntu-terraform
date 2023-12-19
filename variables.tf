
variable "target_node" {
  type = string
  default = "abspve01"
}

variable "vm_name" {
  type = string
}

variable "cores" {
  type = number
  default = 2
}

variable "memory" {
  type = number
  default = 1024
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
  default = "ip=dhcp"
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
  default = -1
}
variable "proxmox_api_url" {
  type = string
  default = "https://10.1.2.2:8006/api2/json/"
}

variable "proxmox_api_token_id" {
  type = string
}

variable "proxmox_api_token_secret" {
  type = string
}
