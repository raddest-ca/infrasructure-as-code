Write-Host "Trying generic"
Resolve-DnsName -Name raddest.ca -Type TXT

Write-Host "Trying specific"
$dns = az network dns zone show --name raddest.ca --resource-group CACN-Raddest-DNS-RG | ConvertFrom-Json
foreach ($nameserver in $dns.nameServers) {
    Write-Host "Trying $nameserver"
    Resolve-DnsName -Name raddest.ca -Type TXT -Server $nameserver
}

Write-Host "Trying dig"
Write-Host "wsl dig +trace raddest.ca NS"
wsl dig +trace raddest.ca NS

Write-Host "Trying goog"
nslookup -type=NS raddest.ca 8.8.8.8
nslookup -type=NS raddest.ca 1.1.1.1

Write-Host "You can also try: https://www.whatsmydns.net/#NS/raddest.ca"