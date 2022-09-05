$appArray = Get-Command -CommandType Application
$arrayCount = $appArray.count

Write-Host "There are $arrayCount Applications in total. Crazy huh?"