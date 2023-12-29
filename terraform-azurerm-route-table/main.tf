locals {
  vnet_routes = csvdecode(file("${path.module}/config/route_rules.csv"))
}

resource "random_string" "random" {
  keepers = {
    salt = "pepper"
  }
  length    = 6
  lower     = true
  min_lower = 6
  numeric   = false
  special   = false
}

resource "azurerm_resource_group" "this" {
  name     = "${random_string.random.result}-rg-01"
  location = var.location
  tags     = var.tags
}

resource "azurerm_route_table" "this" {
  name                          = "${random_string.random.result}-rt-01"
  location                      = var.location
  resource_group_name           = azurerm_resource_group.this.name
  disable_bgp_route_propagation = var.disable_bgp_route_propagation
  tags                          = var.tags
}

resource "azurerm_route" "vnet_routes" {
  for_each               = { for routes in local.vnet_routes : routes.route_name => routes }
  name                   = each.value.route_name
  resource_group_name    = azurerm_resource_group.this.name
  route_table_name       = azurerm_route_table.this.name
  address_prefix         = each.value.address_prefix
  next_hop_type          = each.value.next_hop_type
  next_hop_in_ip_address = (each.value.next_hop_type == "VirtualAppliance") == true ? each.value.route_next_hop_in_ip_address : null
  depends_on             = [azurerm_route_table.this]
}
