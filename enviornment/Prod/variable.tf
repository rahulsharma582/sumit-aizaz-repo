variable "environment" {
  description = "The environment name (e.g. Prod, Staging, Dev)."
  type        = string
  default     = "Prod"
}

variable "location" {
  description = "The primary Azure region for resources."
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  description = "The name of the Resource Group."
  type        = string
  default     = "rg-prod-eastus-001"
}

variable "vnet_name" {
  description = "The name of the Virtual Network."
  type        = string
  default     = "vnet-prod-eastus-001"
}

variable "vnet_address_space" {
  description = "The address space for the Virtual Network."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "The name of the primary Subnet."
  type        = string
  default     = "snet-prod-app-001"
}

variable "subnet_address_prefixes" {
  description = "The address prefixes for the primary Subnet."
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "nsg_name" {
  description = "The name of the Network Security Group."
  type        = string
  default     = "nsg-prod-app-001"
}

variable "security_rules" {
  description = "Network Security Group rules."
  type        = list(any)
  default = [
    {
      name                       = "Allow-HTTPS-Inbound"
      priority                   = 100
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "443"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    }
  ]
}

variable "nic_name" {
  description = "The name of the Network Interface."
  type        = string
  default     = "nic-prod-vm-001"
}

variable "vm_name" {
  description = "The name of the Linux Virtual Machine."
  type        = string
  default     = "vm-prod-app-001"
}

variable "vm_size" {
  description = "The size of the Virtual Machine."
  type        = string
  default     = "Standard_B2s"
}

variable "admin_username" {
  description = "Admin username for the VM."
  type        = string
  default     = "azureadmin"
}

variable "ssh_public_key" {
  description = "Public SSH key for VM authentication."
  type        = string
  sensitive   = true
}

variable "storage_account_name" {
  description = "The name of the Storage Account (must be globally unique, lowercase alphanumeric)."
  type        = string
  default     = "saprodappdata001"
}

variable "container_name" {
  description = "The name of the storage container."
  type        = string
  default     = "app-data"
}

variable "tags" {
  description = "Tags to be applied to all resources."
  type        = map(string)
  default = {
    Environment = "Production"
    ManagedBy   = "Terraform"
    Project     = "Infrastructure"
  }
}
