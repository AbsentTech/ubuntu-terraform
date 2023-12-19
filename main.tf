# Proxmox Full-Clone
# ---
# Create a new VM from a clone



resource "proxmox_vm_qemu" "absentvm" {

  target_node = var.target_node
  name        = var.vm_name
  desc        = var.vm_description
  onboot      = true
  vmid        = var.vmid
  tags  = var.tags
  clone = var.cloneTemplate
  # VM System Settings
  agent = 1

  # VM CPU Settings
  cores   = var.cores
  sockets = 1
  cpu     = "host"

  # VM Memory Settings
  memory = var.memory

  pool = var.pool
  # VM Network Settings
  network {
    bridge = "vmbr0"
    model  = "virtio"
    tag = var.network_tag
  }
 vga {
    type = "serial0"
  } 
 #  create a disk with the size of 10GB
  disk {
    size = var.disk_size
    type = "scsi"
    storage = "local-lvm"
    cache = "writeback"
    iothread = 0
  }
  # VM Cloud-Init Settings
  os_type = "cloud-init"

  # (Optional) IP Address and Gateway
  ipconfig0  = var.ipconfig0
  
  # (Optional) Default User and Password
  ciuser     = var.ciuser
  cipassword = var.cipassword
  
  # (Optional) Add your SSH KEY
  #sshkeys = var.sshkey


}
