provider "azurerm" {
  version = "=1.34.0"
  subscription_id = "58ac7037-efcc-4fb6-800d-da6ca2ee6aed"
}

resource "azurerm_resource_group" "cloudyna2019" {
  name     = "cloudyna2019-euw-rg"
  location = "West Europe"
}

resource "azurerm_storage_account" "cloudyna2019" {
  name                     = "cloudynademo4"
  resource_group_name      = "${azurerm_resource_group.cloudyna2019.name}"
  location                 = "${azurerm_resource_group.cloudyna2019.location}"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}