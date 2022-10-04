param (
    $foldername,
    $newname
)

if (Test-Path $foldername) {
    $files = Get-ChildItem -Path $foldername | Measure-Object
    $i = $files.Count
    $renamePermission = Read-Host("All $i files will be renamed with name $newname, correct? (yes / no)")
        if ($renamePermission -eq "yes") {
            $count = 1
            Get-ChildItem -Path $folderName | ForEach-Object { Rename-Item -Path (Join-Path $folderName $_) -NewName $newname$count; $count++ }
        }
        else {
            Write-Host("Exiting script")
            Exit #Script Exit
        }
}
else {
    Write-Host("The path or folder $foldername doesn't exist, exiting the script")
    Exit #Script Exit
}