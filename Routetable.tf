resource "azurerm_route_table" "route_table" {
  name                = "route-table"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  route {
    name                   = "route-to-internet"
    address_prefix         = "0.0.0.0/0"
    next_hop_type          = "Internet"
  }
}

resource "azurerm_subnet_route_table_association" "assoc" {
  subnet_id       = azurerm_subnet.public.id
  route_table_id  = azurerm_route_table.route_table.id
}

