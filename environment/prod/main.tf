module "rg" {
source = "../../modules/Azurerm_Resource_group"
rg_name = "new_prod1"
rg_location = "west us"
}


module "vnet" {
depends_on = [ module.rg ]
source = "../../modules/Azurerm_virtual_network"
vnet_name = "vnet-prod1"
vnet_location = "west us"
rg_name = "new_prod1"
address_space = ["10.0.0.0/16"]
}

module "subnet"{
    depends_on = [ module.rg,module.vnet ]
source ="../../modules/Azurerm_subnet"
subnet_name = "subnet-prod1"
rg_name = "new_prod1"
vnet_name=  "vnet-prod1"
address_prefixes = ["10.0.1.0/24"]
}