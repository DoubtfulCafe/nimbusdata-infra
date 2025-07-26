//redis cache para almacenar peticiones y mejorar el rendimiento de la aplicacion
resource "azurerm_redis_cache" "db-cache" {
  name                 = "db-redis-${var.project}-${var.enviroment}"
  location             = var.location
  resource_group_name  = azurerm_resource_group.resource_group.name
  capacity             = 1
  family               = "C"
  sku_name             = "Basic"
  non_ssl_port_enabled = false
  minimum_tls_version  = "1.2"

  redis_configuration {
  }

  tags = var.tags
}