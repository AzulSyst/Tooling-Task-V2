. "$PSScriptRoot/suv-options.ps1"

function Write-LabelValue {
    param (
        [string]$Label,
        [string]$Value
    )
    Write-Host $Label -BackgroundColor Blue -ForegroundColor White -NoNewline
    Write-Host " $Value" -BackgroundColor DarkMagenta -ForegroundColor White
}

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