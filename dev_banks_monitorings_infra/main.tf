module "resource_group_dev" {
  source      = "../modules/resource_group"
  rg_name     = "rg-banking-dev"
  rg_location = "West Europe"
}

module "resource_group_prod" {
  source      = "../modules/resource_group"
  rg_name     = "rg-banking-prod"
  rg_location = "West Europe"
}

module "log_analtics_workspace_dev" {
  depends_on   = [module.resource_group_dev]
  source       = "../modules/log_analytics_workspace"
  law_name     = "banking-dev-workspace"
  law_location = "West Europe"
  law_rg_name  = "rg-banking-dev"
}

module "log_analtics_workspace_prod" {
  depends_on   = [module.resource_group_prod]
  source       = "../modules/log_analytics_workspace"
  law_name     = "banking-prod-workspace"
  law_location = "West Europe"
  law_rg_name  = "rg-banking-prod"
}
