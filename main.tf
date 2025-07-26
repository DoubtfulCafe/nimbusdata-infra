provider "azurerm" {
    subscription_id=var.subscription_id
    features {}
}

resource "azurerm_resource_group" "resource_group" {
    name = "rg-${var.project}-${var.enviroment}"
    location = var.location
    tags= var.tags
}