function Get-FiluInfo {
    Get-ChildItem -Path $HOME | Format-Table Name, Length, LastWriteTime
}