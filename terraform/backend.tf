terraform {
  backend "azurerm" {
    resource_group_name = "RGAgenticAI"
    storage_account_name = "straccountagenticai"
    container_name = "tfstate"
    key = "terrform.tfstate"
  }
}