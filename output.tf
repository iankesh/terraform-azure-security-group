output "az_security_group_id" {
  description = "The id of the newly created Security Group"
  value       = azurerm_network_security_group.az_security_group.id
}
