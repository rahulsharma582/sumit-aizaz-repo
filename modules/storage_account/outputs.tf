output "storage_account_id" {
  description = "The ID of the Storage Account."
  value       = azurerm_storage_account.sa.id
}

output "storage_account_name" {
  description = "The name of the Storage Account."
  value       = azurerm_storage_account.sa.name
}

output "primary_blob_endpoint" {
  description = "The endpoint URL for blob storage in the primary location."
  value       = azurerm_storage_account.sa.primary_blob_endpoint
}
