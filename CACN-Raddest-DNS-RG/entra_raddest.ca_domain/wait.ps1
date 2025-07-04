while ($true) {
    Resolve-DnsName -Name raddest.ca -Type NS | Select-Object -ExpandProperty NameHost
}