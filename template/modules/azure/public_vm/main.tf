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

variable "rg_name" {
  type = string
  description = "Resource group Name"
}

variable "rg_location" {
  type = string
  description = "Location to create RG in"
}

resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.rg_location
}