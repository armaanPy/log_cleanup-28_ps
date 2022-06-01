# Delete all files in C:\Temp older than 28 days

$Path = "C:\Temp"
$Daysback = "-28"

$CurrentDate = Get-Date
$DatetoDelete = $CurrentDate.AddDays($Daysback)
Get-ChildItem $Path | Where-Object { $_.LastWriteTime -lt $DatetoDelete } | Remove-Item
