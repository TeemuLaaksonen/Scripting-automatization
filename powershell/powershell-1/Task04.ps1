$names = @("Aku", "Mikki", "Hessu", "Minni", "Iines", "Tupu", "Hupu")
$arrayLength = $names.Count
$first = $names[0]
$last = $names[-1]
Write-Host "There are $arrayLength items in the array:"
foreach ($name in $names) {
    $name
}
Write-Host "The first one is $first and the last one $last"