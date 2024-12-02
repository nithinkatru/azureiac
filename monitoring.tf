# resource "azurerm_log_analytics_workspace" "log_analytics" {
#   name                = "myLogAnalyticsWorkspace"
#   location            = azurerm_resource_group.rg.location
#   resource_group_name = azurerm_resource_group.rg.name
#   sku                 = "PerGB2018"
#   retention_in_days   = 30
# }

# resource "azurerm_monitor_diagnostic_setting" "vm_diagnostic" {
#   name                       = "vmDiagnosticSettings"
#   target_resource_id         = azurerm_virtual_machine.vm.id
#   log_analytics_workspace_id = azurerm_log_analytics_workspace.log_analytics.id

#   logs {
#     category = "Administrative"
#     enabled  = true

#     retention_policy {
#       enabled = false
#     }
#   }

#   logs {
#     category = "Security"
#     enabled  = true

#     retention_policy {
#       enabled = false
#     }
#   }

#   metrics {
#     category = "AllMetrics"
#     enabled  = true

#     retention_policy {
#       enabled = false
#     }
#   }
# }
