# Script PowerShell pour obtenir la RAM totale en Go
$totalBytes = 0
$memoryInfo = Get-WmiObject Win32_PhysicalMemory

foreach ($memory in $memoryInfo) {
    $totalBytes += $memory.Capacity
}

# Convertir octets en Go (1 Go = 1024^3 octets)
$totalGB = [math]::Round($totalBytes / 1GB, 2)
Write-Output "$totalGB"

pause