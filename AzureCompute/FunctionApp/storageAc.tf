resource "azurerm_storage_account" "stoa" {
     name = "stoaragecreapy2137"
     resource_group_name = var.resource_group_name
     location = var.location

     account_tier = "Standard"
     account_replication_type = "LRS"

   }
