terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.47.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "resource_group" {
  source  = "./modules/azure_rg"
  
  resource_group_name = var.resource_group_name
  location            = var.location
}
