# Ensure exactly one argument is passed
param (
    [Parameter(Mandatory=$true)]
    [string]$InputFile
)

. "$PSScriptRoot/suv-options.ps1"

# Check if the report file exists
if (-not (Test-Path $InputFile)) {
    Write-Host "Error: Report file '$InputFile' does not exist."
    exit 1
}

# Check if the report file is empty
if ((Get-Item $InputFile).Length -eq 0) {
    Write-Host "Error: Report file '$InputFile' is empty."
    exit 1
}

# Check if the report file appears to be a valid CSV file (has at least one comma-separated line)
$lines = Get-Content $InputFile
if (-not ($lines | Where-Object { $_ -match ',' })) {
    Write-Host "Error: Report file '$InputFile' does not appear to be a valid CSV file."
    exit 1
}

# Exit on error
$ErrorActionPreference = "Stop"

# Run the Python summary script with the provided argument
& $VENV_PYTHON3 $SUMMARY_REPORT_PY $InputFile


Write-Host ""