environment             = "Prod"
location                = "eastus"
resource_group_name     = "rg-prod-eastus-0011"
vnet_name               = "vnet-prod-eastus-001"
vnet_address_space      = ["10.0.0.0/16"]
subnet_name             = "snet-prod-app-001"
subnet_address_prefixes = ["10.0.1.0/24"]
nsg_name                = "nsg-prod-app-001"

security_rules = [
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

nic_name             = "nic-prod-vm-001"
vm_name              = "vm-prod-app-001"
vm_size              = "Standard_B2s"
admin_username       = "azureadmin"
ssh_public_key       = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC3... dummy-ssh-key-placeholder"
storage_account_name = "saprodappdata001"
container_name       = "app-data"

tags = {
  Environment = "Production"
  ManagedBy   = "Terraform"
  Owner       = "DevOps-Team"
}