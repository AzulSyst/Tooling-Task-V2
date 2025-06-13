. "$PSScriptRoot/suv-options.ps1"

# Ensure exactly one argument is passed
param (
    [Parameter(Mandatory=$true)]
    [string]$InputFile
)

# Strict mode equivalent
Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

# Run Python script
& $VENV_PYTHON3 $SUMMARY_REPORT_PY $InputFile

Write-Host ""