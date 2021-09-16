terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.76.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "74e06804-1e02-43fc-83f2-c2ce23048ad0"
  tenant_id = "14a4d975-55fd-4d44-89f7-c826ac68f929"
}

resource "azurerm_resource_group" "terr_resgroup1" {
  name = "res_group758567"
  location = "uksouth"
}
