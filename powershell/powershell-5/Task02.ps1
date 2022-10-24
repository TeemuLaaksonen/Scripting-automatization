param (
    $filename
)

if (Test-Path -Path $filename) {
    $addressList = ForEach-Object { Get-Content $filename }
    Start-Process -Filepath msedge.exe -ArgumentList $addressList
}
else {
    Write-Host("The file/path does not exist.")
}