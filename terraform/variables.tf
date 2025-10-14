variable "resource_group_name" {
  description = "Nombre del resource group"
  type        = string
  default     = "rg-mvc-app-002"
}

variable "app_service_plan_name" {
  description = "Nombre del App Service Plan"
  type        = string
  default     = "asp-mvc-app-002"
}

variable "app_service_name" {
  description = "Nombre del App Service"
  type        = string
  default     = "app-mvc-app-002"
}

variable "app_name" {
  description = "Nombre de la aplicación"
  type        = string
  default     = "mvc-app-002-test"
}

variable "location" {
  description = "Región de Azure"
  type        = string
  default     = "East US"
}