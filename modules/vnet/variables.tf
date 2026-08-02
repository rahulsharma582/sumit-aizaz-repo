variable "vnet_name" {
  description = "The name of the Virtual Network."
  type        = string
}

variable "location" {
  description = "The Azure Region where the Virtual Network should exist."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Virtual Network."
  type        = string
}

variable "address_space" {
  description = "The address space that is used by the Virtual Network."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
