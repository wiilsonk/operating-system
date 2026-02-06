param (
    [string]$file
)

if (-not (Test-Path $file)) {
    Write-Host "File does not exist."
    exit 1
}

$size = (Get-Item $file).Length

if ($size -gt 1048576) {
    Write-Host "Warning: File is too large"
} else {
    Write-Host "File size is within limits."
}
