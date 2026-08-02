variable "nic_name" {
  description = "The name of the Network Interface."
  type        = string
}

variable "location" {
  description = "The Azure Region where the NIC should exist."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the NIC."
  type        = string
}

variable "subnet_id" {
  description = "The ID of the Subnet to connect this NIC."
  type        = string
}

variable "private_ip_address_allocation" {
  description = "The allocation method for the private IP address. Dynamic or Static."
  type        = string
  default     = "Dynamic"
}

variable "public_ip_id" {
  description = "Optional public IP address ID to associate with the NIC."
  type        = string
  default     = null
}

variable "nsg_id" {
  description = "Optional NSG ID to associate with the NIC."
  type        = string
  default     = null
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
