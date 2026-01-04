resource "azurerm_kubernetes_cluster" "kubc" {
     name = "kubercr23"
     resource_group_name = var.resource_group_name
     location = var.location

     dns_prefix = "aksdns"

     default_node_pool {
          name = "system"
	  node_count = 2
	  vm_size = "Standard_DS2_v2"
	 }

     identity {
         type = "SystemAssigned"
	}

     network_profile {
          network_plugin = "kubenet"
	 }

  }
