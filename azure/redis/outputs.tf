output "redis_cache_name" {
  description = "The name of the Redis cache instance"
  value       = azurerm_redis_cache.redis.name
}

output "redis_cache_location" {
  description = "The location of the Redis cache instance"
  value       = azurerm_redis_cache.redis.location
}

output "redis_cache_primary_access_key" {
  description = "The primary access key of the Redis cache instance"
  value       = azurerm_redis_cache.redis.primary_access_key
}

output "redis_cache_primary_connection_string" {
  description = "The primary connection string of the Redis cache instance"
  value       = azurerm_redis_cache.redis.primary_connection_string
}

output "redis_cache_hostname" {
  description = "The hostname of the Redis cache instance"
  value       = azurerm_redis_cache.redis.hostname
}

output "redis_cache_port" {
  description = "The port of the Redis cache instance"
  value       = azurerm_redis_cache.redis.port
}