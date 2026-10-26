# Équipe SQL

Un code partagé, un state partagé : chacun ajoute sa base au serveur commun.

| Fichier | Qui |
|---|---|
| `main.tf`, `outputs.tf` | Le formateur : resource group et serveur SQL |
| `bronze.tf` | Titouan |
| `silver.tf` | Alain |
| `gold.tf` | Jean-Erwan |
| `modules/sql/` | Le même lakehouse, réutilisable depuis l'URL git du dépôt |

Avant chaque `plan` : **`git pull`**. Le state est commun, le code doit l'être aussi.
