resource "namecheap_domain_records" "main" {
  domain = "raddest.ca"
  mode = "OVERWRITE"
  nameservers = data.azurerm_dns_zone.main.name_servers
}