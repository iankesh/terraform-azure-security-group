data "azurerm_resource_group" "azure_rg" {
  name = var.resource_group_name
}

resource "azurerm_network_security_group" "az_security_group" {
  name                = var.name
  location            = data.azurerm_resource_group.azure_rg.location
  resource_group_name = data.azurerm_resource_group.azure_rg.name

  security_rule {
    name                       = var.security_rule_name
    priority                   = var.security_priority
    direction                  = var.security_direction
    access                     = var.security_access
    protocol                   = var.security_protocol
    source_port_range          = var.security_source_port
    destination_port_ranges    = var.security_destination_port
    source_address_prefix      = var.security_source_address_prefix
    destination_address_prefix = var.security_destination_address_prefix
  }

  tags = {
    Region      = "data.azurerm_resource_group.azure_rg.location"
    Team        = "var.team_tag"
    Environment = "var.env"
    Creator     = "var.creator"
  }
}
