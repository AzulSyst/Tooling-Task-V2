. "$PSScriptRoot/suv-options.ps1"

# Exit on error
$ErrorActionPreference = "Stop"

& $VENV_PYTHON3 $TEST_REPORT_PY


Write-Host ""