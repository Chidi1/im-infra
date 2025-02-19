terraform {
  backend "azurerm" {
    resource_group_name  = "chidiebere-deployment"          
    storage_account_name = "infraapptfstate"           
    container_name       = "tfstate"                   
    key                  = "demoterraform.tfstate"         
  }
}
