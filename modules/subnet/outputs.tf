output "subnet_id" {
  description = "The ID of the Subnet."
  value       = azurerm_subnet.subnet.id
}

output "subnet_name" {
  description = "The name of the Subnet."
  value       = azurerm_subnet.subnet.name
}

output "subnet_address_prefixes" {
  description = "The address prefixes of the Subnet."
  value       = azurerm_subnet.subnet.address_prefixes
}
