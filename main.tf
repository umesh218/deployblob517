provider "azurerm" {
  features {}
 subscription_id = "17abc602-7315-4600-a8f8-412c409d1d92"
  tenant_id       = "10f1e709-440c-4a18-9025-699d00a15b85"


}

resource "azurerm_resource_group" "example" {
  name     = "my-resource-group"
  location = "East US"
}
