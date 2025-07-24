resource "azurerm_log_analytics_workspace" "law" {
  name                = var.law_name
  location            = var.law_location
  resource_group_name = var.law_rg_name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}