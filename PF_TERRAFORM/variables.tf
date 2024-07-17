variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "projet_final_terraform"
}

variable "location" {
  description = "The location/region where the resources will be created"
  type        = string
  default     = "West Europe"
}

variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
  default     = "vn1"
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
  default     = "subnet1"
}

variable "address_space" {
  description = "The address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_prefix" {
  description = "The address prefix for the subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "public_ip_name" {
  description = "The name of the public IP"
  type        = string
  default     = "public-ip"
}

variable "vm_name" {
  description = "The name of the virtual machine"
  type        = string
  default     = "vm1"
}

variable "vm_size" {
  description = "The size of the virtual machine"
  type        = string
  default     = "Standard_B1s"
}

variable "admin_username" {
  description = "The admin username for the virtual machine"
  type        = string
  default     = "adminuser"
}

variable "admin_public_key_path" {
  description = "The path to the public key for SSH access"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

variable "os_image_publisher" {
  description = "The publisher of the OS image"
  type        = string
  default     = "Canonical"
}

variable "os_image_offer" {
  description = "The offer of the OS image"
  type        = string
  default     = "UbuntuServer"
}

variable "os_image_sku" {
  description = "The SKU of the OS image"
  type        = string
  default     = "18.04-LTS"
}

variable "os_image_version" {
  description = "The version of the OS image"
  type        = string
  default     = "latest"
}

variable "nsg_name" {
  description = "The name of the Network Security Group"
  type        = string
  default     = "nsg1"
}

variable "sh_script" {
  description = "The path to the cloud-init script"
  type        = string
  default     = "preinstall.sh"
}
