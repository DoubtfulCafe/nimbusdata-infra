// API Web App
resource "azurerm_linux_web_app" "back_api" {
  name                = "api-nimbusdata-${var.project}-${var.enviroment}"
  location            = var.location
  resource_group_name = azurerm_resource_group.resource_group.name
  service_plan_id     = azurerm_service_plan.nimbusdata_sp.id

  site_config {
    always_on = true
    application_stack {
      docker_registry_url = "https://index.docker.io"
      docker_image_name   = "nginx:latest"
    }
  }

  app_settings = {
    WEBSITES_PORT = "80"
  }

  tags = var.tags
}