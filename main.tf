terraform{
    backend "azurerm"{
        resource_group_name = "RESOURCE GROUP"

        storage_account_name = "STORAGE ACCOUNT"

        container_name = "CONTAINER"

        access_key = "ACCESS KEY"
    }
}

provider "azurerm" {

    version = "2.0.0"
    skip_provider_registration = "true"
    
    features{}
}

resource "azurerm_storage_account" "TechTargetSG" {

    name = "STORAGE ACCOUNT NAME"
    resource_group_name = var.resourceGroupName
    location = var.location
    account_tier = "Standard"

    account_replication_type = "GRS"

    tags = {
        environment = "development"
    }
}
