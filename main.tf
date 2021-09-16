terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}
provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "rg" {
  name = "res_grpp24542"
  location = "uksouth"
}


