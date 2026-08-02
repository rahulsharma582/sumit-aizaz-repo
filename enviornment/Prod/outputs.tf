output "resource_group_name" {
  description = "The name of the resource group."
  value       = module.resource_group.resource_group_name
}

output "vnet_id" {
  description = "The ID of the Virtual Network."
  value       = module.vnet.vnet_id
}

output "subnet_id" {
  description = "The ID of the Subnet."
  value       = module.subnet.subnet_id
}

output "vm_private_ip" {
  description = "The private IP address of the Linux Virtual Machine."
  value       = module.linux_vm.private_ip_address
}

output "storage_account_name" {
  description = "The name of the Storage Account."
  value       = module.storage_account.storage_account_name
}

output "storage_container_name" {
  description = "The name of the Storage Container."
  value       = module.container.container_name
}
