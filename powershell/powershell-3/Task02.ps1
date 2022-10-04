param (
    $foldername,
    $filename
)

$folderStatus = Test-Path $foldername
    if ( $folderStatus -eq "True") {
        $files = Get-ChildItem -Path $foldername | Where-Object {$_.Name -match $filename}
        $i = $files.Count
        if ($i -ge 1) {
            Write-Host("The file $filename exists in $foldername")
        }
        else {
            Write-Host("Sorry, the $filename does NOT exist in $foldername")
        }

    }
    else {
        Write-Host("The folder $foldername does NOT exist")
    }