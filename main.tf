# Proxmox Full-Clone
# ---
# Create a new VM from a clone



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

variable "sshkey" {
  type = string
  default = ""
}
variable "ipconfig" {
  type = string
}

resource "proxmox_vm_qemu" "ubuntu-22" {

  boot        = "order=virtio0;ide2;ide0"
  target_node = var.target_node
  name        = var.vm_name
  desc        = "Main vm"
  onboot      = true

  clone = "UbuntuTemp"

  # VM System Settings
  agent = 1

  # VM CPU Settings
  cores   = var.cores
  sockets = 1
  cpu     = "host"

  # VM Memory Settings
  memory = var.memory

  # VM Network Settings
  network {
    bridge = "vmbr0"
    model  = "virtio"
  }

  # VM Cloud-Init Settings
  os_type = "cloud-init"

  # (Optional) IP Address and Gateway
  ipconfig0  = var.ipconfig
  ciuser     = var.ciuser
  cipassword = var.cipassword
  # (Optional) Default User

  # (Optional) Add your SSH KEY
  sshkeys = var.sshkey


}
