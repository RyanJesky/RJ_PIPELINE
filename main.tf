terraform{
    backend "azurerm"{
        resource_group_name = "dev2"

        storage_account_name = "rjteststorageaccount123"

        container_name = "rjtestcontainer"

        access_key = "tnZBWmHMIts73t095CrwsrOkGawXRUT4xAwNZsvlY5fABgCj7pPIUIDgLPkPp2nHeNEmY8Lb2Ikh7UndzeY8jQ=="
    }
}

provider "azurerm" {

    version = "2.0.0"
    skip_provider_registration = "true"
    
    features{}
}

resource "azurerm_storage_account" "TechTargetSG" {

    name = "rjteststorageaccount1234"
    resource_group_name = var.resourceGroupName
    location = var.location
    account_tier = "Standard"

    account_replication_type = "GRS"

    tags = {
        environment = "development"
    }
}
