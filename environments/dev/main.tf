provider "azurerm" {
  version = "=2.20.0"
  features {}
}

module "az_resource_group" {
  source   = "iankesh/resource-group/azure"
  name     = "ankesh-workspace"
  location = "westeurope"
  team_tag = "DevOps"
  creator  = "ankesh"
}

module "az_security_group" {
  source                              = "../terraform-azure-security-group"
  name                                = "ankesh-security-group-dev"
  resource_group_name                 = module.az_resource_group.az_rg_name
  security_rule_name                  = "ankesh-security-rule"
  security_priority                   = "101"
  security_direction                  = "Inbound"
  security_access                     = "Allow"
  security_protocol                   = "Tcp"
  security_source_port                = "*"
  security_destination_port           = ["80" , "22", "443"]
  security_source_address_prefix      = "*"
  security_destination_address_prefix = "*"
  env                                 = "dev"
  team_tag                            = "DevOps"
  creator                             = "ankesh"
}

output "azure_resource_group_id" {
  value = module.az_resource_group.az_rg_id
}

output "azure_resource_group_name" {
  value = module.az_resource_group.az_rg_name
}

output "azure_vnet_id" {
  value = module.az_virtual_network.vnet_id
}

output "azure_vnet_name" {
  value = module.az_virtual_network.vnet_name
}

output "azure_vnet_location" {
  value = module.az_virtual_network.vnet_location
}

output "azure_vnet_address_space" {
  value = module.az_virtual_network.vnet_address_space
}