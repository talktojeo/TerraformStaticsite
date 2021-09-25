provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "resgrp_web_demo19"
  location = "westus2"
}


resource "azurerm_static_site" "terr_staticsite" {
  name                = "demostttsite446"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
}

