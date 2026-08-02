output "container_id" {
  description = "The ID of the Storage Container."
  value       = azurerm_storage_container.container.id
}

output "container_name" {
  description = "The name of the Storage Container."
  value       = azurerm_storage_container.container.name
}
