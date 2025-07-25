output "storage_account_id" {
  value = azurerm_storage_account.sre_storage_account.id
}

output "storage_account_primary_access_key" {
  value     = azurerm_storage_account.sre_storage_account.primary_access_key
  sensitive = true
}

output "storage_account_primary_connection_string" {
  value     = azurerm_storage_account.sre_storage_account.primary_connection_string
  sensitive = true
}

output "storage_container_id" {
  value = azurerm_storage_container.sre_storage_container.id
}



