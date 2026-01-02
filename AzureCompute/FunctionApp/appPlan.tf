resource "azurerm_service_plan" "serp" {
    name = "func-plancreaty2314"
    resource_group_name = var.resource_group_name
    location = var.location

    os_type = "Linux"
    sku_name = "Y1"

 }

