param (
    [string]$name = "unknown",
    [int]$number = 1
)

for ($i = 0; $i -lt $number; $i++)
    {Write-Output("Hello $name")} 

