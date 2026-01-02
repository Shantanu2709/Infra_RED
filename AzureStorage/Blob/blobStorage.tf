resource "azurerm_storage_container" "stoc" {
  name = "blobstocre231"
  storage_account_name = azurerm_storage_account.stoab.name
  container_access_type = "private"
 }
