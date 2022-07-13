terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.13.0"
    }
    databricks = {
      source  = "databricks/databricks"
      version = "1.0.1"
    }
  }
}


provider "azurerm" {
  features {}

  subscription_id = var.az-subscription-id
  tenant_id       = var.az-tenant-id
  client_id       = var.az-client-id
  client_secret   = var.az-client-secret
}


provider "databricks" {
  # Configuration options
  host                        = var.adb-workspace-url #https://adb-8018907867659718.18.azuredatabricks.net
  azure_workspace_resource_id = var.adb-workspace-id  #8018907867659718
  azure_client_id             = var.az-client-id
  azure_client_secret         = var.az-client-secret
  azure_tenant_id             = var.az-tenant-id
}

data "databricks_node_type" "smallest" {
  local_disk = true
}
