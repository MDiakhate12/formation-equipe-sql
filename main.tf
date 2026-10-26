# Le socle commun, posé par le formateur. Chacun ajoute ensuite sa base dans son propre fichier.
resource "azurerm_resource_group" "equipe" {
  name     = "rg-equipe-sql"
  location = var.location
}

# Le nom d'un serveur SQL est unique dans tout Azure : un suffixe aléatoire, tiré une fois et gardé dans le state.
resource "random_string" "suffix" {
  length  = 5
  upper   = false
  special = false
}

resource "azurerm_mssql_server" "equipe" {
  name                = "sql-equipe-${random_string.suffix.result}"
  resource_group_name = azurerm_resource_group.equipe.name
  location            = azurerm_resource_group.equipe.location
  version             = "12.0"

  azuread_administrator {
    login_username              = var.sql_admin_login
    object_id                   = var.sql_admin_object_id
    azuread_authentication_only = true
  }
}
