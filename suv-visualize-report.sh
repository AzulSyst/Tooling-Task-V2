#!/bin/bash

source "suv-ansi-colors.sh"
source "suv-options.sh"

set -eu

$VENV_PYTHON3 $VISUALIZE_REPORT_PY $1

echo 