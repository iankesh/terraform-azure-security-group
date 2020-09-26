variable "resource_group_name" {
  description = "(Required) The name of an existing resource group to be imported."
  type        = string
}

variable "name" {
  description = "(Required) The name of the Security Group"
  default     = "cloud-security-group"
}

variable "security_rule_name" {
  description = "(Required) The name of the virtual network"
  default     = "cloud-security-rule"
}

variable "security_priority" {
  description = "(Required) The priority of the rule. The value can be between 100 and 4096"
  default     = "101"
}

variable "security_direction" {
  description = "(Required) If the traffic is incoming or Outgoing. Possible values are Inbound and Outbound"
  default     = "Inbound"
}

variable "security_access" {
  description = "(Required) If the traffic is allowed or denied. Possible values are Allow and Deny"
  default     = "Allow"
}

variable "security_protocol" {
  description = "(Required) Network protocol rule. Possible values are Tcp, Udp, Icmp, or * to match all"
  default     = "Tcp"
}

variable "security_source_port" {
  description = "(Required) List of source ports"
  default     = "*"
  type        = string
}

variable "security_destination_port" {
  description = "(Required) List of destination ports"
  default     = ["80", "443", "22"]
}

variable "security_source_address_prefix" {
  description = "(Required) Source IP"
  default     = "*"
}

variable "security_destination_address_prefix" {
  description = "(Required) Destination IP"
  default     = "*"
}

variable "env" {
  description = "(Optional) name of the resource group"
  default     = "dev"
}

variable "team_tag" {
  description = "(Optional) tag a team"
  default     = "DevOps"
}

variable "creator" {
  description = "(Optional) tag a creator"
  default     = "iankesh"
}

