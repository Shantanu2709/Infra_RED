resource "azurerm_eventgrid_event_subscription" "evee" {
    name = "send-to-func"
    
    scope = azurerm_eventgrid_topic.evet.id
    
    webhook_endpoint {
         url = "function-url-where-message-will-be-sent"
	 }
   }
