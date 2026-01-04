resource "azurerm_eventgrid_topic" "evet" {
    name = "app-event-grid327"
    location = var.location
    resource_group_name = var.resource_group_name


}
