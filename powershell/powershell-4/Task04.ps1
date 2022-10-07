
$inputArray = @()

do {
    $userInput = Read-Host("Give a filename and press enter to continue, or submit empty to quit")
    $inputArray += $userInput
}
until ($userInput -eq "")

for ($i = 0; $i -lt $inputArray.Count; $i++) {
    $fileName = $inputArray[$i] + ".txt"
    $fileName = Join-Path $HOME $fileName
    Get-Date -Format "d.M.yyyy HH:mm" | Out-File -FilePath $fileName
    $fileCount = $i
}

Write-Host("$fileCount files were created")
