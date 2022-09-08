terraform {
  required_version = ">= 1.2.7"
  cloud {
    organization = "cklewar"
    hostname     = "app.terraform.io"

    workspaces {
      name = "f5-xc-azure-vnet-multinode"
    }
  }

  required_providers {
    volterra = {
      source  = "volterraedge/volterra"
      version = ">= 0.11.12"
    }

    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 3.21.1"
    }

    local = ">= 2.2.3"
    null  = ">= 3.1.1"
  }
}