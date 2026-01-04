resource "azurerm_service_plan" "serpa" {
   name = "appserv-plancre-tes231"
   resource_group_name = var.resource_group_name
   location = var.location

   os_type = "Linux"
   sku_name = "B1"

 }

