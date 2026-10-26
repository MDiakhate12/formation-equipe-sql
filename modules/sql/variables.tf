variable "prefix" {
  type        = string
  description = "Préfixe du nom du serveur, unique dans Azure (minuscules et chiffres)"
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "layers" {
  type        = set(string)
  description = "Une base par couche"
  default     = ["bronze", "silver", "gold"]
}

variable "sql_admin_login" {
  type = string
}

variable "sql_admin_object_id" {
  type = string
}
