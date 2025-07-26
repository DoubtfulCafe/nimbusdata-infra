//Data Factory
resource "azurerm_data_factory" "data" {
  name                = "${var.project}df"
  location            = var.location
  resource_group_name = azurerm_resource_group.resource_group.name
  tags = var.tags
}