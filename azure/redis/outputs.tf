output "name" {
  description = "The name of the Redis cache instance"
  value       = azurerm_redis_cache.redis.name
}

output "location" {
  description = "The location of the Redis cache instance"
  value       = azurerm_redis_cache.redis.location
}

output "primary_access_key" {
  description = "The primary access key of the Redis cache instance"
  value       = azurerm_redis_cache.redis.primary_access_key
}

output "primary_connection_string" {
  description = "The primary connection string of the Redis cache instance"
  value       = azurerm_redis_cache.redis.primary_connection_string
}

output "hostname" {
  description = "The hostname of the Redis cache instance"
  value       = azurerm_redis_cache.redis.hostname
}

output "port" {
  description = "The port of the Redis cache instance"
  value       = azurerm_redis_cache.redis.port
}