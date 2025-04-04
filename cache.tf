# NOTE: the Name used for Redis needs to be globally unique
resource "azurerm_redis_cache" "redis-cache" {
  name                 = "redis-cache-${var.project}-${var.function}-${var.environment}"
  location             = var.location
  resource_group_name  = azurerm_resource_group.rg.name
  capacity             = 2
  family               = "C"
  sku_name             = "Standard"
  non_ssl_port_enabled = false
  minimum_tls_version  = "1.2"

  redis_configuration {
    maxmemory_policy                = "volatile-lru"
    maxfragmentationmemory_reserved = 50
    maxmemory_delta                 = 50
  }
}
