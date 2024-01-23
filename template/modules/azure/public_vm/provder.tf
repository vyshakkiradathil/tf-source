terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.87.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "181821eb-6bc1-41fa-bba6-5bfecf56c48f"
  features {}
}