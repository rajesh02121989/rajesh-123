terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }


backend "azurerm" {
    resource_group_name  = "rg-test"
    storage_account_name = "stgtes"
    container_name       = "cont"
    key                  = "terraform.tfstate"
  }
  
}

provider "azurerm" {
  features {}
  subscription_id = "177b7e12-5f03-4f63-bcd1-ed6d1d776bff"
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-test"
  location = "West Europe"
}

resource "azurerm_storage_account" "stg" {
  name                     = "stgtes"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

}

resource "azurerm_storage_container" "container" {
  name                  = "cont"
  storage_account_name  = azurerm_storage_account.stg.name
  container_access_type = "private"
}
