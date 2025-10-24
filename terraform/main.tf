resource "azurerm_resource_group" "main" {
  name     = "rg-${var.app_name}-${var.environment}"
  location = var.location
  
  tags = {
    environment = var.environment
    application = var.app_name
  }
}
/*
resource "azurerm_service_plan" "main" {
  name                = "${var.app_name}-${var.environment}-asp"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  os_type             = "Linux"
  sku_name            = "B1"
  
  tags = {
    environment = var.environment
    application = var.app_name
  }
}

resource "azurerm_linux_web_app" "main" {
  name                = "${var.app_name}-${var.environment}-app"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_service_plan.main.location
  service_plan_id     = azurerm_service_plan.main.id

  site_config {
    application_stack {
      dotnet_version = "8.0"
    }
    always_on = true
  }

  app_settings = {
    "WEBSITE_RUN_FROM_PACKAGE" = "1"
  }

  tags = {
    environment = var.environment
    application = var.app_name
  }
}
*/
