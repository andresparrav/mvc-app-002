output "app_url" {
  description = "URL de la aplicación desplegada"
  value       = azurerm_linux_web_app.app_service.default_hostname
}

output "resource_group_name" {
  description = "Nombre del resource group creado"
  value       = azurerm_resource_group.main.name
}

output "app_service_name" {
  description = "Nombre del App Service creado"
  value       = azurerm_linux_web_app.app_service.name
}