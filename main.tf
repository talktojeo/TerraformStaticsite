provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "rg" {
  name     = "resgrp_web_demo19"
  location = "uksouth"
}

resource "azurerm_app_service" "terr_appsvc" {
  name                = "azdemoappsrvc"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.terr_appservplan.id

  site_config {
    dotnet_framework_version = "v4.0"
    scm_type                 = "LocalGit"
  }

}
resource "azurerm_app_service_plan" "terr_appservplan" {
  name                = "app-srv-plan1"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_static_site" "terr_staticsite" {
  name = "demostttsite446"
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
}



