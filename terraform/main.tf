resource "azurerm_key_vault" "example" {
  name                = var.key_vault_name
  location            = var.location
  resource_group_name = var.resource_group_name
 
  sku_name = "standard"
 
  tenant_id = data.azurerm_client_config.current.tenant_id
 
  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id
 
    key_permissions = [
      "Create",
      "Delete",
      "List",
      "Get",
    ]
 
    secret_permissions = [
      "Set",
      "Delete",
      "List",
      "Get",
    ]
 
    certificate_permissions = [
      "Get",
      "List",
      "Delete",
    ]
  }
}

data "azurerm_client_config" "current" {}
 
