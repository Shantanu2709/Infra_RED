resource "azuread_user" "use" {
   user_principal_name = "devuser1@yourtenat.onmicrosoft.com"
   display_name = "Dev User One"
   mail_nickname = "devuser1"
   password = "Temp@9876"
   force_password_change = true

  }


  data "azurerm_subscription" "current" {}
