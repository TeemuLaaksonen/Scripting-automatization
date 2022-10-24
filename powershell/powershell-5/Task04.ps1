param (
    $filename
)

$fileCreationLocation = Join-Path $HOME -ChildPath $filename
Get-LocalUser | Export-Csv -path $fileCreationLocation -Delimiter ";"