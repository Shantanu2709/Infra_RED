module "appi" {
     source = "./AzureMonitoring/AppInsights"
     resource_group_name = azurerm_resource_group.resg.name
     location =  azurerm_resource_group.resg.location

}


module "ACRcheck" {
      source = "./AzureCompute/ACR"
      resource_group_name = azurerm_resource_group.resg.name
      location = azurerm_resource_group.resg.location
      app_insights_ci = module.appi.app_insights_oci
     }

module "AKScheck" {
      source = "./AzureCompute/AKS"
      resource_group_name = azurerm_resource_group.resg.name
      location = azurerm_resource_group.resg.location
      app_insights_ci = module.appi.app_insights_oci
     }

module "AppServicecheck" {
      source = "./AzureCompute/AppService"
      resource_group_name = azurerm_resource_group.resg.name
      location = azurerm_resource_group.resg.location
      app_insights_ci = module.appi.app_insights_oci
     }


module "functionAppcheck" {
      source = "./AzureCompute/FunctionApp"
      resource_group_name = azurerm_resource_group.resg.name
      location = azurerm_resource_group.resg.location
      app_insights_ci = module.appi.app_insights_oci
     }


module "Blobcheck" {
      source = "./AzureStorage/Blob"
      resource_group_name = azurerm_resource_group.resg.name
      location = azurerm_resource_group.resg.location
      app_insights_ci = module.appi.app_insights_oci
     }


module "Tablecheck" {
      source = "./AzureStorage/Table"
      resource_group_name = azurerm_resource_group.resg.name
      location = azurerm_resource_group.resg.location
      app_insights_ci = module.appi.app_insights_oci
     }


module "Queuecheck" {
      source = "./AzureStorage/Queue"
      resource_group_name = azurerm_resource_group.resg.name
      location = azurerm_resource_group.resg.location
      app_insights_ci = module.appi.app_insights_oci
     }

module "Cosmoscheck" {
      source = "./AzureStorage/Cosmos"
      resource_group_name = azurerm_resource_group.resg.name
      location = azurerm_resource_group.resg.location
      app_insights_ci = module.appi.app_insights_oci
     }


module "Sqlcheck" {
      source = "./AzureStorage/SQL"
      resource_group_name = azurerm_resource_group.resg.name
      location = azurerm_resource_group.resg.location
      app_insights_ci = module.appi.app_insights_oci
     }


module "APIMcheck" {
      source = "./ConnectToConsumeTo/APIM"
      resource_group_name = azurerm_resource_group.resg.name
      location = azurerm_resource_group.resg.location
      app_insights_ci = module.appi.app_insights_oci
     }


module "EventGridcheck" {
      source = "./ConnectToConsumeTo/EventGrid"
      resource_group_name = azurerm_resource_group.resg.name
      location = azurerm_resource_group.resg.location
      app_insights_ci = module.appi.app_insights_oci
     }
