output "server_id" {
  value = azurerm_mssql_server.equipe.id
}

output "server_fqdn" {
  value = azurerm_mssql_server.equipe.fully_qualified_domain_name
}
