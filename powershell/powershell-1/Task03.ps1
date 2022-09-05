$firstNum = Read-Host("Give the first integer")
$secondNum = Read-Host("Give the second integer")
$sum = [int]($firstNum) + [int]($secondNum)
$sub = [int]($firstNum) - [int]($secondNum)
$mul = [int]($firstNum) * [int]($secondNum)
$div = [int]($firstNum) / [int]($secondNum)
Write-Host "Sum is $sum"
Write-Host "Subtraction is $sub"
Write-Host "Multiplication is $mul"
Write-Host "Division is $div"

