. "$PSScriptRoot/suv-ansi-colors.ps1"
. "$PSScriptRoot/suv-options.ps1"

# Strict mode equivalent
Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

# Print system info with color
Write-Host ""
Write-Host "${ANSI_BG_BLUE}whoami:${ANSI_OFF}   ${ANSI_BG_PURPLE}$(whoami)${ANSI_OFF}"
Write-Host "${ANSI_BG_BLUE}hostname:${ANSI_OFF} ${ANSI_BG_PURPLE}$(hostname)${ANSI_OFF}"
Write-Host "${ANSI_BG_BLUE}pwd:${ANSI_OFF}      ${ANSI_BG_PURPLE}$(Get-Location)${ANSI_OFF}"

# Relax error handling (like `set +e`)
$ErrorActionPreference = "Continue"

# Run Python script
& $VENV_PYTHON3 $PROCESS_REPORT_PY

Write-Host ""