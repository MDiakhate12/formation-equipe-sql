variable "location" {
  type    = string
  default = "swedencentral"
}

# Administrateur Entra ID du serveur : le formateur. Aucun mot de passe SQL.
variable "sql_admin_login" {
  type    = string
  default = "formateur"
}

variable "sql_admin_object_id" {
  type    = string
  default = "06aaff22-647d-46fa-9500-11c61a949f2f"
}
