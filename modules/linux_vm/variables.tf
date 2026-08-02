variable "vm_name" {
  description = "The name of the Linux Virtual Machine."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Virtual Machine."
  type        = string
}

variable "location" {
  description = "The Azure Region where the Virtual Machine should exist."
  type        = string
}

variable "size" {
  description = "The SKU which should be used for this Virtual Machine."
  type        = string
  default     = "Standard_B2s"
}

variable "admin_username" {
  description = "The username of the local administrator account."
  type        = string
  default     = "azureuser"
}

variable "ssh_public_key" {
  description = "The Public SSH Key data for SSH authentication."
  type        = string
  sensitive   = true
}

variable "network_interface_ids" {
  description = "A list of Network Interface IDs to attach to this Virtual Machine."
  type        = list(string)
}

variable "os_disk_caching" {
  description = "The Type of Caching which should be used for the Internal OS Disk."
  type        = string
  default     = "ReadWrite"
}

variable "os_disk_storage_account_type" {
  description = "The Type of Storage Account which should back this OS Disk."
  type        = string
  default     = "Standard_LRS"
}

variable "image_publisher" {
  description = "Specifies the publisher of the image used to create the virtual machine."
  type        = string
  default     = "Canonical"
}

variable "image_offer" {
  description = "Specifies the offer of the image used to create the virtual machine."
  type        = string
  default     = "0001-com-ubuntu-server-jammy"
}

variable "image_sku" {
  description = "Specifies the SKU of the image used to create the virtual machine."
  type        = string
  default     = "22_04-lts"
}

variable "image_version" {
  description = "Specifies the version of the image used to create the virtual machine."
  type        = string
  default     = "latest"
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
