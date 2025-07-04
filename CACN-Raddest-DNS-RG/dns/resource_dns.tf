resource "azurerm_dns_zone" "main" {
  resource_group_name = data.azurerm_resource_group.main.name
  tags = data.azurerm_resource_group.main.tags
  name = "raddest.ca"
}