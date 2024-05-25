terraform {
  backend "azurerm" {
    resource_group_name  = "arunk-rg"
    storage_account_name = "arunstorage77"
    container_name       = "testtfstate"
    key                  = "test.terraform.tfstate"
  }
}