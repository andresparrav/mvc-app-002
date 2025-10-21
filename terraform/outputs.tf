output "app_url" {
  description = "URL de la aplicación desplegada"
  value       = "https://${azurerm_linux_web_app.main.default_hostname}"  # ← main, no app_service
}

output "resource_group_name" {
  description = "Nombre del resource group creado"
  value       = azurerm_resource_group.main.name
}

output "app_service_name" {
  description = "Nombre del App Service creado"
  value       = azurerm_linux_web_app.main.name  # ← main, no app_service
}