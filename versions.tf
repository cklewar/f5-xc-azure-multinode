terraform {
  required_version = ">= 1.3.0"
  cloud {
    organization = "cklewar"
    hostname     = "app.terraform.io"

    workspaces {
      name = "f5-xc-azure-vnet-multinode"
    }
  }
  
  required_providers {
    volterra = {
      source = "volterraedge/volterra"
      version = "= 0.11.21"
    }
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 3.25.0"
    }
    local = ">= 2.2.3"
    null = ">= 3.1.1"
  }
}