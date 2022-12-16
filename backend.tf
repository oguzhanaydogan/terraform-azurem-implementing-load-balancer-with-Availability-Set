terraform {
    backend "azurerm" {
        storage_account_name = "oaydoganstorageacc" # Use your own unique name here
        container_name       = "oaydogancontainer"        # Use your own container name here
        key                  = "terraform.tfstate"       # Add a name to the state file
        resource_group_name  = "oguzhanRG"         # Use your own resource group name here
    }
}