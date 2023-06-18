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
3. Customize the desired configuration for your virtual machines in the `vmdetails.auto.tfvars` file. You can adjust various parameters such as VM name, CPU, memory, storage, network, etc.
4. Optionally, modify the `main.tf` file to customize any additional resources you require (e.g., networks, storage, templates).
5. Initialize the Terraform configuration by running `terraform init` in the repository's root directory.
6. Review the plan by executing `terraform plan` to see the changes that will be applied.
7. Apply the changes by running `terraform apply`. Confirm the changes when prompted.



## Variables

The following variables are available for customization in the `vmdetails.auto.tfvars` file:

- `#proxmox_api_url = ""`  <!-- The Proxmox IP Address (Commented out as we are using the environment variable) -->
- `#proxmox_api_token_id = ""`  <!-- The API Token ID (Commented out as we are using the environment variable) -->
- `target_node="pve"` <!-- The name of the target node (Default is pve) -->
- `vm_name="test-vm"` <!-- The name of the virtual machine (Make sure this name is unique) -->
- `cores=2` <!-- The number of cores for the virtual machine (Default is 2) -->
- `memory=4096` <!-- The memory allocation for the virtual machine in MB (Default is 4096) -->
- `disk_size="20G"` <!-- The disk size for the virtual machine in GB (Default is 20G) -->
- `network_tag = 5` <!-- The network tag to assign to the virtual machine (Default is 5) -->
- `cloneTemplate = "UbuntuTemp"` <!-- The name of the template to clone the virtual machine from (Default is UbuntuTemp). Make sure this template exists -->
- `ipconfig0="ip=10.1.5.188/24,gw=10.1.5.1"` <!-- The IP configuration for the virtual machine (Replace with the requested IP) -->
- `ciuser="absentadmin"` <!-- The username for the virtual machine (Replace with a new username if needed. Default is absentadmin) -->
- `#cipassword = ""` <!-- Uncomment this line and set a password if needed -->
- `#proxmox_api_token_secret = ""` <!-- Uncomment this line and set a token secret if needed -->
- `vmid = 5000`  <!-- The ID of the virtual machine (Default is -1 - Terraform will set this) -->
- `vm_description = "Terraform Test VM"` <!-- The description of the virtual machine (Default is Terraform Test VM) -->
- `tags = "terraform, test, demo"` <!-- Comma-separated list of tags for the virtual machine -->
- `#pool = "Terraform"`




Feel free to modify or add additional variables based on your specific requirements.

## Contribution

Contributions to this Terraform template are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

## License

This Terraform template is licensed under the [MIT License](LICENSE). Feel free to use, modify, and distribute it as per your needs.
