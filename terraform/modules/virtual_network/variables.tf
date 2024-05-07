variable "subnets" {
  description = "List of subnet configurations"
  type        = list(object({
    name                                        = string
    address_prefixes                            = list(string)
    private_endpoint_network_policies_enabled   = bool
    private_link_service_network_policies_enabled = bool
  }))
  default = [
    {
      name                                        = "subnet1"
      address_prefixes                            = ["10.0.1.0/24"]
      private_endpoint_network_policies_enabled   = true
      private_link_service_network_policies_enabled = true
    },
    {
      name                                        = "subnet2"
      address_prefixes                            = ["10.0.2.0/24"]
      private_endpoint_network_policies_enabled   = true
      private_link_service_network_policies_enabled = true
    },
    {
      name                                        = "subnet3"
      address_prefixes                            = ["10.0.3.0/24"]
      private_endpoint_network_policies_enabled   = true
      private_link_service_network_policies_enabled = true
    }
  ]
}

variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
  default = "iac_group"
}

variable "location" {
  description = "Location in which to deploy the network"
  type        = string
default = "East US"
}

variable "vnet_name" {
  description = "VNET name"
  type        = string
  default = "ba-vnet"
}

variable "address_space" {
  description = "VNET address space"
  type        = list(string)
}

variable "tags" {
  description = "(Optional) Specifies the tags of the storage account"
  default     = {}
}

variable "log_analytics_workspace_id" {
  description = "Specifies the log analytics workspace id"
  type        = string
}
