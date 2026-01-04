resource "azurerm_api_management" "apim" {
   name = "apim-recursreact3241"
   resource_group_name = var.resource_group_name
   location = var.location

   publisher_email = "shantanu2408singh@gmail.com"
   publisher_name = "Shantanu Singh"

   sku_name = "Developer_1"

   }
