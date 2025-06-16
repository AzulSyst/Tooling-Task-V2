#!/bin/bash

source "suv-ansi-colors.sh"
source "suv-options.sh"

set -eu

$VENV_PYTHON3 $TEST_REPORT_PY

echo