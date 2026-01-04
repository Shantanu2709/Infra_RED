resource "azurerm_mssql_database" "mssd" {
   name = "demobdcrea241"
   server_id = azurerm_mssql_server.msss.id
   sku_name = "Basic"
  }
