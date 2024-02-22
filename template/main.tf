terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.47.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-demo-cil"
    storage_account_name = "cildemostatebackend"
    container_name       = "terraform"
    key                  = "dev.terraform.tfstate"
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
