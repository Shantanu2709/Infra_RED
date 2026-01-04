resource "azurerm_linux_function_app" "linf" {
  name = "func-rigidcreat2341"
  resource_group_name = var.resource_group_name 
  location = var.location

  storage_account_name = azurerm_storage_account.stoa.name
  storage_account_access_key = azurerm_storage_account.stoa.primary_access_key

  service_plan_id = azurerm_service_plan.serp.id

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
