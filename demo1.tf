provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "demo1" {
  name     = "testrg1trainer"
  location = "eastus" 
  tags = {
      env = "testrg1trainer-demo"
  } 
}

terraform {
    backend "azurerm" {
        resource_group_name ="terraformrg"
        storage_account_name = "sa1gaja"
        container_name = "con1"
        key = "terraform.tfstate"
    }
}
resource "azurerm_resource_group" "demo2" {
  name     = "testrg2trainer"
  location = "southindia"
}
