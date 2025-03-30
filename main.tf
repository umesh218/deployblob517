provider "azurerm" {
  features {}
 subscription_id = "17abc602-7315-4600-a8f8-412c409d1d92"
  tenant_id       = "10f1e709-440c-4a18-9025-699d00a15b85"


}
resource "azurerm_resource_group" "deployblob" { # Resource Group is now "deployblob"
  name     = "deployblob"
  location = "East US" # Or your desired location
}

resource "azurerm_storage_account" "umesh517" { # Storage Account is now "umesh517"
  name                     = "umesh517"
  resource_group_name      = azurerm_resource_group.deployblob.name # Reference the new RG
  location                 = azurerm_resource_group.deployblob.location # Use the new RG's location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "umesh218" { # Container is now "umesh218"
  name                  = "umesh218"
  storage_account_name  = azurerm_storage_account.umesh517.name # Reference the Storage Account
  container_access_type = "private"
}
