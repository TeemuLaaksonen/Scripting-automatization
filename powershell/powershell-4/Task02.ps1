function Get-FiluInfo2 {
    param ($fileType)
    $fileType = "*" + $fileType
    Get-ChildItem -Path $HOME -filter $fileType | Format-Table Name, Length, LastWriteTime
} 