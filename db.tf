//Servidor para base de datos SQL
resource "azurerm_mssql_server" "sql_server" {
    name= "dbserver-${var.project}-${var.enviroment}"
    location = var.location
    resource_group_name = azurerm_resource_group.resource_group.name
    version = "12.0"
    administrator_login = "sqladmin"
    administrator_login_password = var.admin_sql_password 
    tags = var.tags
}

//base de datos general
resource "azurerm_mssql_database" "db" {
    name = "${var.project}db"
    server_id = azurerm_mssql_server.sql_server.id
    sku_name="S0"
    tags = var.tags
}