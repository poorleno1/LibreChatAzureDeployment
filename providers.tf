# Azure provider version
terraform {
  required_version = ">= 1.3.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0, < 4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }
  }

  backend "azurerm" {
    environment          = "public"
    storage_account_name = "azterraformstg"
    container_name       = "deployments"
    key                  = "librechat-test.tfstate"
    resource_group_name  = "momint-infra-core"
  }
}

provider "azurerm" {
  features {}
}

provider "random" {}