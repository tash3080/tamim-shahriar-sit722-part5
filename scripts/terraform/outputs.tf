output "acr_login_server" {
  value = azurerm_container_registry.container_registry.login_server
}

output "acr_username" {
  value = azurerm_container_registry.container_registry.admin_username
}

output "acr_password" {
  value = azurerm_container_registry.container_registry.admin_password
  sensitive = true
}