resource "azurerm_application_insights" "appi" {
    name = "appinsights231crew"
    resource_group_name = var.resource_group_name
    location = var.location

    workspace_id = azurerm_log_analytics_workspace.loga.id
    application_type = web

  }
