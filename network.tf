## Same as the July 2024 videos, figure i'd do it to do vnetting.
resource "azurerm_virtual_network" "network" {
  name                = "example-network"
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
}

## Create a subnet for the messaging service, figure it's gonna be used for the signalR service.
resource "azurerm_subnet" "database-subnet" {
  name                 = "internal"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.network.name
  address_prefixes     = ["10.0.2.0/24"]
}

### Create a subnet for the storage account that's gonna be storin the images from the db. 
resource "azurerm_subnet" "cache-subnet" {
  name                 = "internal"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.network.name
  address_prefixes     = ["10.0.2.0/24"]
}

