
    param (
        [string]$one,
        [string]$two,
        [string]$three
    )
    $params = $one, $two, $three

    Write-Host "Parameters are: $($params -join " ")"

    $params = $params | Sort-Object -Property Length
    
    Write-Host "Your parameters from shortest to longest are: $($params -join " ")"