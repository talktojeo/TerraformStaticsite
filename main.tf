provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "rg" {
  name     = "resgrpp240042"
  location = "uksouth"
}

