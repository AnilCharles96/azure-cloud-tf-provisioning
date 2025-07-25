

resource "azurerm_storage_account" "sre_storage_account" {
  /*. 
  name ("srechallengeforflaschenpost1234566") can only consist of lowercase letters and numbers, and must be between 3 and 24 characters long
  therefore, the name is shortened to "srechallengeflaschenpost"
  */
  name                     = "srechallengeflaschenpost"
  resource_group_name      = azurerm_resource_group.sre_rg.name
  location                 = azurerm_resource_group.sre_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  access_tier              = "Hot"

  tags = {
    department = "SRE"
  }
}


resource "azurerm_storage_container" "sre_storage_container" {
  name                  = "sre"
  #storage_account_name = azurerm_storage_account.sre_storage_account.name
  storage_account_id   = azurerm_storage_account.sre_storage_account.id
  container_access_type = "private"

  depends_on = [azurerm_storage_account.sre_storage_account]
}