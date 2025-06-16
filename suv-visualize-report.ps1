# Ensure exactly one argument is passed
param (
    [Parameter(Mandatory=$true)]
    [string]$InputFile
)

. "$PSScriptRoot/suv-options.ps1"

# Check if the report file exists
if (-not (Test-Path $args[0])) {
    Write-Host "Error: Report file '$($args[0])' does not exist."
    exit 1
}

# Check if the report file is empty
if ((Get-Item $args[0]).Length -eq 0) {
    Write-Host "Error: Report file '$($args[0])' is empty."
    exit 1
}

# Check if the report file appears to be a valid CSV file (has at least one comma-separated line)
$lines = Get-Content $args[0]
if (-not ($lines | Where-Object { $_ -match ',' })) {
    Write-Host "Error: Report file '$($args[0])' does not appear to be a valid CSV file."
    exit 1
}

# Exit on error
$ErrorActionPreference = "Stop"

# Run the Python visualization script with the provided argument
if ($args.Count -ne 1) {
    Write-Host "Usage: suv-visualize-report.ps1 <report_file>"
    exit 1
}
& $VENV_PYTHON3 $VISUALIZE_REPORT_PY $args[0]


Write-Host ""