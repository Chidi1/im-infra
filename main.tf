# Reference to an existing resource group
data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}


module "acr" {
  source              = "./modules/acr"
  acr_name            = var.acr_name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.rg.name
}

module "aks" {
  source              = "./modules/aks"
  cluster_name        = var.cluster_name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.rg.name
  dns_prefix          = var.dns_prefix
  acr_id              = module.acr.acr_id

}

