provider "azurerm" {
  features {}
subscription_id = "17abc602-7315-4600-a8f8-412c409d1d92"

}

resource "azurerm_resource_group" "example" {
  name     = "my-resource-group"
  location = "East US"
}
