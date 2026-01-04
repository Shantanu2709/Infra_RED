resource "azurerm_container_registry" "conr" {
    name = "azucregcreato2431"
    resource_group_name = var.resource_group_name
    location = var.location

    sku_name = "Standard"
    admin_enabled = true
  }
