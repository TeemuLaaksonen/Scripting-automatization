$folderPath = Read-Host("Please give path to folder")
$itemsInFolder = Get-ChildItem -Path $folderPath
$itemCount = $itemsInFolder.count
Write-Host "There are $itemCount items in $folderPath"
