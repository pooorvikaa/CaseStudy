resource "azurerm_sql_server" "dbserv" {
  name                         = "mysqlserver"
  resource_group_name          = azurerm_resource_group.rg.name
  location                     = azurerm_resource_group.rg.location
  version                      = "12.0"
  administrator_login          = "adminlogin"
  administrator_login_password = "admin"
}

resource "azurerm_sql_database" "db" {
  name                = "db"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  server_name         = azurerm_sql_server.dbserv.name
  edition             = "Basic"
  requested_service_objective_name = "Basic"
}

