# Titouan : la base bronze. Voir les specs de l’énoncé (jour2/bonus2).
# Titouan : la base bronze. Voir les specs de l’énoncé (jour2/bonus2).

resource "azurerm_mssql_database" "bronze" {
  name         = "db-bronze"
  server_id    = azurerm_mssql_server.equipe.id
  collation    = "SQL_Latin1_General_CP1_CI_AS"
  license_type = "LicenseIncluded"
  max_size_gb  = 2
  sku_name     = "Basic"
  enclave_type = "VBS"
  tags = {
    owner= "titouan"
  }
#   # prevent the possibility of accidental data loss
#   lifecycle {
#     prevent_destroy = true
#   }
}

output "bronze_id" {
  value = azurerm_mssql_database.bronze.id
}