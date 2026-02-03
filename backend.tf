terraform {
  backend "azurerm" {
    resource_group_name  = "RajeshGroup"
    storage_account_name = "rajeshterraformsa"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
