terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.47.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "crossplane-rg"
    storage_account_name = "crossplaneblob125"
    container_name       = "terraform"
    key                  = "dev.terraform.tfstate"
    #use_msi              = true
    #subscription_id      = "181821eb-6bc1-41fa-bba6-5bfecf56c48f"
    #tenant_id            = "adb53b4f-b05f-4dcb-a2e1-9111380568c3"
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
