output "vm_id" {
  description = "The ID of the Linux Virtual Machine."
  value       = azurerm_linux_virtual_machine.vm.id
}

output "vm_name" {
  description = "The name of the Linux Virtual Machine."
  value       = azurerm_linux_virtual_machine.vm.name
}

output "private_ip_address" {
  description = "The primary private IP address of the Linux Virtual Machine."
  value       = azurerm_linux_virtual_machine.vm.private_ip_address
}
