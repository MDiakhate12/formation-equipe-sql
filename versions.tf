terraform {
  required_version = ">= 1.15.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }

  # Un seul state pour toute l'équipe : chaque apply lit et écrit le même fichier, protégé par un verrou.
  backend "azurerm" {
    resource_group_name  = "rg-formation-partage"
    storage_account_name = "stformationtfstates"
    container_name       = "equipe"
    key                  = "sql.tfstate"
  }
}

# La subscription est lue dans ARM_SUBSCRIPTION_ID.
provider "azurerm" {
  features {}
}
