# Create resource group
resource "azurerm_resource_group" "sre_rg" {
  location = "West Europe"
  name     = "sre-challenge-flaschenpost"

  tags = {
    department = "SRE"
  }
}