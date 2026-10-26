resource "azurerm_mssql_server" "this" {
  name                = "sql-${var.prefix}"
  resource_group_name = var.resource_group_name
  location            = var.location
  version             = "12.0"

  azuread_administrator {
    login_username              = var.sql_admin_login
    object_id                   = var.sql_admin_object_id
    azuread_authentication_only = true
  }
}

resource "azurerm_mssql_database" "this" {
  for_each = var.layers

  name        = "db-${each.key}"
  server_id   = azurerm_mssql_server.this.id
  sku_name    = "Basic"
  max_size_gb = 2
}
