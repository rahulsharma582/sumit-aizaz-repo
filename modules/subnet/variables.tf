variable "subnet_name" {
  description = "The name of the Subnet."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which the subnet exists."
  type        = string
}

variable "vnet_name" {
  description = "The name of the virtual network in which to create the subnet."
  type        = string
}

variable "address_prefixes" {
  description = "The address prefixes to use for the subnet."
  type        = list(string)
}

variable "service_endpoints" {
  description = "The list of Service endpoints to associate with the subnet."
  type        = list(string)
  default     = []
}
