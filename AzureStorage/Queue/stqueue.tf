resource "azure_storage_account" "stoaq" {
   name = "queuestorage2314"
   resource_group_name = var.resource_group_name
   location = var.location

   account_tier = "Standard"
   account_replication_type = "LRS"

 }
