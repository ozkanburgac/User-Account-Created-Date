$DateCutOff = (Get-Date).AddDays(-30)
Get-ADUser -Filter * -Properties whenCreated | where {$_.whenCreated -gt $DateCufOff} | FT Name, whenCreated