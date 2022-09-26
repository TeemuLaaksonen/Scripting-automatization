$homeDir = $env:USERPROFILE
$fileArray = Get-ChildItem $homeDir | Where-Object {$_.PsIsContainer -eq $false}
$fileCount = $fileArray.Count
Write-Host "$fileCount files found at $homeDir"