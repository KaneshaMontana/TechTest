terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.6.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "tf-test-rg-777"
    storage_account_name = "ketestbucket"
    container_name       = "tfstate"
    key                  = "env.terraform.tfstate"
  }

}


provider "azurerm" {
  features {}

  subscription_id = ""
  tenant_id       = ""
  client_id       = ""
  client_secret   = ""
}




module "vm-dev" {
  source = "./module"

  vm_count           = 2
  rg_name            = "my-resource-group-dev"
  region             = "northeurope"
  vnet_name          = "my-vnet-dev"
  vnet_cidr          = "10.1.0.0/16"
  public_subnet_name = "my-public-subnet-dev"
  public_subnet_cidr = ["10.1.0.0/24"]
  nic_name           = "my-nic-dev"
  vm_name            = "my-vm-dev"
  vm_size            = "Standard_F2"

}


module "vm-staging" {
    source = "./module"
    vm_count = 2

    rg_name = "my-resource-group-staging"
    region = "northeurope"
    vnet_name = "my-vnet-staging"
    vnet_cidr = "10.2.0.0/16"
    public_subnet_name = "my-public-subnet-staging"
    public_subnet_cidr = ["10.2.0.0/24"]
    nic_name = "my-nic-staging"
    vm_name = "my-vm-staging"
    vm_size = "Standard_F2"
}

module "vm-prod" {
    source = "./module"

    vm_count = 2

    rg_name = "my-resource-group-prod"
    region = "northeurope"
    vnet_name = "my-vnet-prod"
    vnet_cidr = "10.3.0.0/16"
    public_subnet_name = "my-public-subnet-prod"
    public_subnet_cidr = ["10.3.0.0/24"]
    nic_name = "my-nic-prod"
    vm_name = "my-vm-prod"
    vm_size = "Standard_F2"

}