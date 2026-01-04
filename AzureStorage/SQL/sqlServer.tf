resource "azurerm_mssql_server" "msss" {
     name = "sqlservdemo2341"
     resource_group_name = var.resource_group_name
     location = var.location
     
     administrator_login = "sqladmin"
     administrator_login_password = "Password@23416"

     }
