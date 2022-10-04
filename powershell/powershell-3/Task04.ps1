param (
    $foldername,
    $filename,
    $number
)

if ( Test-Path $foldername) {
    Write-Host("The folder exists, creating files")
}
else {
    New-Item -Path $foldername -ItemType Directory
    Write-Host("The folder has been created, creating files")
}
for ($i = 0; $i -lt $number; $i++) {
    $copyNmbr = $i + 1
    $newFile = $foldername + "\" + $filename + $copyNmbr
    New-Item -Path $newFile
    Write-Host("The file " + $filename + " has been created in the $foldername")
}

$files = Get-ChildItem -Path $foldername
$count = $files.Count
Write-Host("$count files were created to $foldername :")
Write-Host($files)