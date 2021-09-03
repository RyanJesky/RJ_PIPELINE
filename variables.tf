variable "resourceGroupName" {
    default = "RESOURCE GROUP NAME"
    type = string
    description = "Resource group name for the storage account to reside in"
}

variable "location" {
    default = "eastus"
    type = string
    description = "Region that the storage account will reside in"
}
