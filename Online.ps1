Echo "Program Started"
Add-Type -AssemblyName System.Windows.Forms

$keyShell = New-Object -ComObject wscript.shell
$count = 0

while($true){
    $plusMinus = Get-Random -Maximum 500 -Minimum 100
    $p = {System.Windows.Forms.Cursor}::Position
    $x = $p.X + $plusMinus + 1000
    $y = $p.Y + $plusMinus + 1000

    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)
    Start-Sleep -Seconds 60
    $plusMinus *= -1
    $count++
    Echo "$count"
    $keyShell.SendKeys(".")
}
