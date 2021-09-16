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
}
resource "azurerm_resource_group" "terr_resgroup1" {
  name = "res_group758567"
  location = "uksouth"
} 
