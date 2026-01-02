resource "azurerm_storage_queue" "stoq" {
   name = "aqueue-def"
   storage_account_name = azurerm_storage_account.stoaq.name
  }
