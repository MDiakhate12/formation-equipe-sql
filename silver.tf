# Alain : la base silver. Voir les specs de l’énoncé (jour2/bonus2).

resource "azurerm_mssql_database" "silver" {
  name = "df-silver"
  server_id = azurerm_mssql_server.equipe.id
  sku_name = "Basic"
  max_size_gb = 2
  tags = {
    owner = "alain"
  }
}


output "silver_id" {
  value = azurerm_mssql_database.silver.id
}