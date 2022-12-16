resource "azurerm_storage_account" "storage_acc" {
  name                     = "oaydoganstorageacc"
  resource_group_name      = azurerm_resource_group.azure_rg.name
  location                 = azurerm_resource_group.azure_rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}