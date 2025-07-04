# https://entra.microsoft.com/#view/Microsoft_AAD_IAM/DomainDnsRecordsBlade/domainName/raddest.ca/verificationSucceeded~/false
# https://learn.microsoft.com/en-us/entra/identity/users/domains-manage
resource "azurerm_dns_txt_record" "raddest-entra" {
  resource_group_name = data.azurerm_dns_zone.main.resource_group_name
  zone_name = data.azurerm_dns_zone.main.name
  name = "@"
  ttl = 3600
  record {
    value = "MS=ms36631124"
  }
}