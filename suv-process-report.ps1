. "$PSScriptRoot/suv-ansi-colors.ps1"
. "$PSScriptRoot/suv-options.ps1"

# Strict mode equivalent
Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

# Print system info with color
Write-Host ""
Write-LabelValue "whoami:" (whoami)
Write-LabelValue "hostname:" (hostname)
Write-LabelValue "pwd:" (Get-Location)

# Relax error handling (like `set +e`)
$ErrorActionPreference = "Continue"

# Run Python script
& $VENV_PYTHON3 $PROCESS_REPORT_PY

Write-Host ""