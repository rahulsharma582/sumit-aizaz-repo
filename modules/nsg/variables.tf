variable "nsg_name" {
  description = "The name of the Network Security Group."
  type        = string
}

variable "location" {
  description = "The Azure Region where the NSG should exist."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the NSG."
  type        = string
}

variable "security_rules" {
  description = "List of security rules to apply to the NSG."
  type        = list(any)
  default     = []
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
