resource "azurerm_storage_table" "stot" {
    name = "nosqlkey-dert"
    storage_account_name = azurerm_storage_account.stoat.name
  }
