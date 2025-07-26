// Api nimbusdata
resource "azurerm_service_plan" "nimbusdata_sp" {
  name                = "sp-back-${var.project}-${var.enviroment}"
  location            = var.location
  resource_group_name = azurerm_resource_group.resource_group.name
  os_type             = "Linux"
  sku_name            = "B1"
  tags                = var.tags
}