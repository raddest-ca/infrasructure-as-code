terraform {
  backend "azurerm" {
    resource_group_name  = "cacn-terraform-prod-rg"
    storage_account_name = "terraformproddwvc87"
    container_name       = "statefiles"
    subscription_id      = "6cb7032f-2437-4f5e-91e8-676cb67e5444" # AAFC VSE Benefit
    key                  = "CACN-Raddest-DNS-RG resource_group.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "6cb7032f-2437-4f5e-91e8-676cb67e5444" # AAFC VSE Benefit
}