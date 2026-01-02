resource "azurerm_role_assignement" "rola" {
   scope = data.azurerm_subscription.current.id
   role_definition_name = "Reader"
   principal_id =  azuread_user.use.object_id
 }
