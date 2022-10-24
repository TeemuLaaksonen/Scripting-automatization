param (
    $filename
)


if (Test-Path -Path $filename) {
    [int]$i = 0 
    Import-Csv $filename | ForEach-Object { $permission = Read-Host("A new local account will be created for " + $_.Firstname + " " + $_.Lastname + ", y/n?")
    if ($permission -eq "Y" -or $permission -eq "y") {
        $i++
        New-LocalUser -Name (($_.Lastname.ToLower()).Substring(0,4) + ($_.Firstname.ToLower()).Substring(0,2)) -NoPassword }
    } | Out-Null
    Get-LocalUser -Name * | Format-Table -AutoSize
    Write-Host("$i accounts created successfully") -ForegroundColor Green
}
else {
    Write-Host("The file does not exist.")
}