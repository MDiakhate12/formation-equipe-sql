resource "azurerm_mssql_database" "gold" {
  name                = "db-gold"
  server_id           = azurerm_mssql_server.equipe.id
  resource_group_name = azurerm_resource_group.equipe.name
  max_size_gb  = 2
  sku_name     = "S0"
  tags = {
    owner = "erwan"
  }
}

output "gold_id" {
  value = azurerm_mssql_database.gold.id
}