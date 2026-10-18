terraform {
  

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    
    }
  }

  backend "azurerm" {
    resource_group_name  = "STGRG"
    storage_account_name = "storage1sep"
    container_name       = "container1sep"
    key                  = "dev.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}