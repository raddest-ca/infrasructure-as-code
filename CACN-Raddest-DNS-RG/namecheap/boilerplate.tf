terraform {
  backend "azurerm" {
    resource_group_name  = "cacn-terraform-prod-rg"
    storage_account_name = "terraformproddwvc87"
    container_name       = "statefiles"
    subscription_id      = "6cb7032f-2437-4f5e-91e8-676cb67e5444" # AAFC VSE Benefit
    key                  = "CACN-Raddest-DNS-RG namecheap.tfstate"
  }
  required_providers {
    namecheap = {
      source  = "namecheap/namecheap"
      version = "2.2.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "6cb7032f-2437-4f5e-91e8-676cb67e5444" # AAFC VSE Benefit
}

provider "namecheap" {

}