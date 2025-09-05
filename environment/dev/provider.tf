terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }
#   backend "azurerm" {

# resource_group_name              = "rg_rajesh89"          
#     storage_account_name             = "stgrajesh89"                              
#     container_name                   = "rajeshcontainer"                               
#     key                              = "rjprod.tfstate"


    
#   }
}

provider "azurerm" {
  
  features {}
  subscription_id = "ff9732b6-644f-42fb-aad3-79fa3d280afd"
}