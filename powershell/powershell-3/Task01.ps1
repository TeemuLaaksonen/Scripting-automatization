param (
    $foldername
)

$result = Test-Path $foldername
    if ( $result -eq "True") {
        $files = Get-ChildItem -Path $foldername | Format-Table Name
        $i = $files.Count
        Write-Host("$i files in the folder $foldername")
        Write-Output($files)
    }
    else {
            Write-Host("$foldername doesn't exist!")
        }
