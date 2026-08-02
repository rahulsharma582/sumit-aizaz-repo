module "resource_group" {
  source   = "../../modules/azurerm_resource_group"
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

module "vnet" {
  source              = "../../modules/vnet"
  vnet_name           = var.vnet_name
  location            = module.resource_group.resource_group_location
  resource_group_name = module.resource_group.resource_group_name
  address_space       = var.vnet_address_space
  tags                = var.tags
}

module "subnet" {
  source              = "../../modules/subnet"
  subnet_name         = var.subnet_name
  resource_group_name = module.resource_group.resource_group_name
  vnet_name           = module.vnet.vnet_name
  address_prefixes    = var.subnet_address_prefixes
  service_endpoints   = ["Microsoft.Storage"]
}

module "nsg" {
  source              = "../../modules/nsg"
  nsg_name            = var.nsg_name
  location            = module.resource_group.resource_group_location
  resource_group_name = module.resource_group.resource_group_name
  security_rules      = var.security_rules
  tags                = var.tags
}

module "nic" {
  source              = "../../modules/nic"
  nic_name            = var.nic_name
  location            = module.resource_group.resource_group_location
  resource_group_name = module.resource_group.resource_group_name
  subnet_id           = module.subnet.subnet_id
  nsg_id              = module.nsg.nsg_id
  tags                = var.tags
}

module "linux_vm" {
  source                = "../../modules/linux_vm"
  vm_name               = var.vm_name
  resource_group_name   = module.resource_group.resource_group_name
  location              = module.resource_group.resource_group_location
  size                  = var.vm_size
  admin_username        = var.admin_username
  ssh_public_key        = var.ssh_public_key
  network_interface_ids = [module.nic.nic_id]
  tags                  = var.tags
}

module "storage_account" {
  source                        = "../../modules/storage_account"
  storage_account_name          = var.storage_account_name
  resource_group_name           = module.resource_group.resource_group_name
  location                      = module.resource_group.resource_group_location
  account_tier                  = "Standard"
  account_replication_type      = "GRS"
  public_network_access_enabled = false
  tags                          = var.tags
}

module "container" {
  source                = "../../modules/container"
  container_name        = var.container_name
  storage_account_name  = module.storage_account.storage_account_name
  container_access_type = "private"
}
