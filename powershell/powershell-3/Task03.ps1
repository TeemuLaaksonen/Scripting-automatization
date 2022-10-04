param (
    $foldername,
    $filename
)

$folderStatus = Test-Path $foldername
    if ( $folderStatus -eq "True") {
        $files = Get-ChildItem -Path $foldername | Where-Object {$_.Name -contains $filename}
        $i = $files.Count
            if ($i -ge 1) {
                Write-Host("The file $filename exists in the $foldername")
            }
            else {
                $createFile = Read-Host("The file $filename doesn't exist, would you like to create that file? (yes/no)")
            }
                if ($createFile -eq "yes") {
                    $newFile = $foldername + "\" + $filename
                    New-Item -Path $newFile
                    Write-Host("The file $filename has been created in the $foldername")
                }

                else {
                    Write-Host("Have a good day!")
                }
    }
    else {
        Write-Host("The folder $foldername does NOT exist")
        }