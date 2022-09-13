resource "azurerm_resource_group" "resource_group" {
  name     = var.resourcename
  location = var.location
}

resource "azurerm_public_ip" "public_ip" {
  name                =  var.publicname
  resource_group_name = azurerm_resource_group.resource_group.name
  location            = azurerm_resource_group.resource_group.location
  allocation_method   = var.allocation_method

  tags = {
    environment = var.environment
  }
}