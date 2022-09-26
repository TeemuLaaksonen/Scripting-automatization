param (
    [string]$ip = "192.168.0.1",
    [int]$attempts = 1
)

$permission = Read-Host("I will ping the address $ip $attempts times, answer 'yes' if this is correct.")

if($permission -eq "yes"){
    for ($i = 0; $i -lt $attempts; $i++)
        {Write-Output("Attempt " + ($i +1) + " of pinging " +  $ip)}
}