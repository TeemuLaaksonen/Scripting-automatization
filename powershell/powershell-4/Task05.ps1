param (
    $foldername
)

if (Test-Path -Path $foldername) {
    $fileArray = Get-ChildItem -Path $foldername | Where-Object {$_.PsIsContainer -eq $false}
    $fileName = Join-Path $HOME "files.txt"
    $fileArray | Add-Content $fileName
}
else {
    Write-Host("Sorry, $foldername doesn't exist")
}

if (Test-Path -Path $filename) {
    $fileArrayCount = $fileArray.Count
    Write-Host("$filename was created and it includes the names of $fileArrayCount files.")
}
else {
    Write-Host("Something went wrong")
}

