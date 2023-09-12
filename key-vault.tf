data "azurerm_key_vault" "kv" {
  name                = "momint-a-kv"
  resource_group_name = local.infra_rg
}

# data "azurerm_key_vault_secret" "pat" {
#   name         = "githubPAT"
#   key_vault_id = data.azurerm_key_vault.kv.id
# }