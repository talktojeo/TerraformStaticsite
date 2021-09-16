provider "azurerm" {
  features {}
}
terraform {
  backend "azurerm" {
    resource_group_name  = "res_terraf_statemanage"
    storage_account_name = "terrastatemangem99"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
resource "azurerm_resource_group" "rg" {
  name     = "resgrp_web_demo19"
  location = "uksouth"
}


resource "azurerm_static_site" "terr_staticsite" {
  name                = "demostttsite446"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
}



