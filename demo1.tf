provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "demo1" {
  name     = "testrg1trainer"
  location = "eastus"
  tags = {
      env = "resource-group-demo"
  }
}