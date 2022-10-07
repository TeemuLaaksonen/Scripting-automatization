# Parametri ei saa olla muotoa ".txt" tms, koska scripti lisää tiedostotyypin automaattisesti!

param (
    $fileName
)

$inputArray = @()

do {
    $userInput = Read-Host("Give a workstation name and press enter to continue, or submit empty to quit")
    $inputArray += $userInput
}
until ($userInput -eq "")
$fileName = $fileName + ".txt"
$fileName = Join-Path $HOME $fileName
$inputArray | Add-Content $fileName
Write-Output("The names have been written to file $fileName")