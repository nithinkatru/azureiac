variable "resource_group_name" {
  description = "Name of the resource group"
  default     = "MyResourceGroup"
}

variable "location" {
  description = "Azure region"
  default     = "eastus"
}

variable "admin_username" {
  description = "Admin username"
  default     = "azureuser"
}

variable "admin_password" {
  description = "Admin password"
}
output "vm_id" {
  description = "ID of the Virtual Machine"
  value       = azurerm_virtual_machine.vm.id
}

