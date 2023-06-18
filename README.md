# Terraform Proxmox Virtual Machine Template

This repository contains a Terraform module that serves as a template for provisioning and managing virtual machines in Proxmox using Terraform. It provides an easy and efficient way to generate and update virtual machines on the Proxmox platform.

## Prerequisites

Before using this Terraform template, ensure that you have the following prerequisites installed:

- Terraform (version 0.14 or above)
- Proxmox Virtual Environment

## Getting Started

To get started with this template, follow these steps:

1. Clone this repository to your local machine or download the ZIP file.
2. Configure the Proxmox provider in your Terraform configuration file (e.g., `main.tf`). Make sure to provide the necessary authentication details and connection information.
3. Customize the desired configuration for your virtual machines in the `variables.tf` file. You can adjust various parameters such as VM name, CPU, memory, storage, network, etc.
4. Optionally, modify the `main.tf` file to customize any additional resources you require (e.g., networks, storage, templates).
5. Initialize the Terraform configuration by running `terraform init` in the repository's root directory.
6. Review the plan by executing `terraform plan` to see the changes that will be applied.
7. Apply the changes by running `terraform apply`. Confirm the changes when prompted.

## Example Usage

Below is an example of how to use this Terraform template to create a virtual machine in Proxmox:

```hcl
# main.tf

terraform {
  required_providers {
    proxmox = {
      source  = "proxmox/proxmox"
      version = "2.2.1"
    }
  }
}

provider "proxmox" {
  pm_api_url   = "https://your-proxmox-url:8006/api2/json"
  pm_user      = "your-username"
  pm_password  = "your-password"
  pm_tls_insecure = true
}

module "virtual_machine" {
  source  = "path/to/terraform-proxmox-virtual-machine"
  vm_name = "my-vm"
  vm_cpu  = 2
  vm_memory = 4096
  vm_disk_size = 20
  # Add more parameters as needed
}
```

## Variables

The following variables are available for customization in the `variables.tf` file:

- `vm_name`: The name of the virtual machine.
- `vm_cpu`: The number of virtual CPUs assigned to the virtual machine.
- `vm_memory`: The amount of memory (in MB) allocated to the virtual machine.
- `vm_disk_size`: The size of the virtual machine's disk (in GB).
- `vm_os_template`: The ID or name of the Proxmox template to use for the virtual machine.
- `vm_network_bridge`: The bridge to connect the virtual machine's network interface to.
- `vm_ip_address`: The desired IP address for the virtual machine (optional).
- `vm_ssh_public_key`: The SSH public key to be added to the virtual machine (optional).

Feel free to modify or add additional variables based on your specific requirements.

## Contribution

Contributions to this Terraform template are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

## License

This Terraform template is licensed under the [MIT License](LICENSE). Feel free to use, modify, and distribute it as per your needs.
