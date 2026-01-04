resource "azurerm_cosmosdb_account" "cosa" {
      name = "cosmosdbtrea231"
      resource_group_name = var.resource_group_name
      location = var.location

      offer_type = "Standard"
      kind = "GlobalDocumentDB"
      
      consistency_policy {
          consistency_level = "Session"
        }

      geo_location {
            location = var.location
	    failover_priority = 0
	   }
 }

