terraform {
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "~> 3.0"
        }
    }
  
}
provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "rg" {
  name     = "rg1"
  location = "West Europe"
}

resource "azurerm_resource_group" "rg2" {
  name     = "rg2"
  location = "West Europe"
}