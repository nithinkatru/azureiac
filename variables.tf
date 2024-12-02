variable "admin_username" {
  description = "The admin username for the virtual machine."
  type        = string
}

variable "admin_password" {
  description = "The admin password for the virtual machine."
  type        = string
  sensitive   = true
}

variable "tenant_id" {
  description = "Azure AD Tenant ID."
  type        = string
}

variable "subscription_id" {
  description = "Azure Subscription ID."
  type        = string
}
variable "azure_devops_pat" {
  description = "Personal Access Token for Azure DevOps"
  type        = string
  sensitive   = true
}
