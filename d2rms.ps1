# Script: d2r-multi-script
# Author: admon84
# GitHub: https://github.com/admon84/d2r-multi-script

$banner = "[d2rms]"
$handle = "BaseNamedObjects\DiabloII Check For Other Instances"
$nickname = '"Check For Other Instances"'

$output = handle -p D2R.exe -a $handle | findstr /C:"D2R.exe" | findstr /C:"Sessions"

if ($output.length -lt 80) {
    Write-Host "$banner D2R $nickname process handle not found" -ForegroundColor Red
    exit
}

$pidStart = $output.IndexOf("pid: ") + 5
$pidEnd = $output.IndexOf(" ", $pidStart) + 1
$pidValue = $output.Substring($pidStart, $pidEnd - $pidStart).Trim()

$handleEnd = $output.IndexOf(":", $output.IndexOf("Event "))
$handleStart = $output.LastIndexOf(" ", $handleEnd) + 1
$handleValue = $output.Substring($handleStart, $handleEnd - $handleStart).Trim()

Write-Host "$banner D2R $nickname process handle found (PID $pidValue)" -ForegroundColor Green
handle -p $pidValue -c $handleValue -y -nobanner
