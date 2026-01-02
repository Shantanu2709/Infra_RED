resource "azurerm_linux_web_app" "linw" {
      name = "az-linux-query213"
      resource_group_name = var.resource_group_name
      location = var.location

      service_plan_id = azurerm_service_plan.serpa.id

      site_config {
           always_on = true
           application_stack {
	           dotnet_version = "8.0"
		   }
                }

      app_settings = {
             	FUNCTION_WORKER_RUNTIME = "dotnet-isolated"
		APPLICATIONINSIGHTS_CONNECTION_STRING = var.app_insights_ci
		  }

   }

