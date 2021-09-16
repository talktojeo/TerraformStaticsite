terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.76.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "74e06804-1e02-43fc-83f2-c2ce23048ad0"
  features {}
}

resource "azurerm_resource_group" "terr_resgroup1" {
  name = "res_group758567"
  location = "uksouth"
}
