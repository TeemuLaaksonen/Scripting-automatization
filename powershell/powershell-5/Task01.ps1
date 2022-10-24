param (
    $filename
)

if (Test-Path -Path $filename) {
    Import-Csv $filename | ForEach-Object {Write-Host("Hello my colleague " + $_.Firstname + " " + $_.Lastname + ". This is your new account: `n" +  (($_.Lastname.ToLower()).Substring(0,4)) + (($_.Firstname.ToLower()).Substring(0,2)))
    $i++}
    Write-Host("$i accounts created successfully") -ForegroundColor Green
}
else {
    Write-Host("The file does not exist.")
}
