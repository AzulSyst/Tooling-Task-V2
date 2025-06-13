#!/bin/bash

source "suv-ansi-colors.sh"
source "suv-options.sh"

set -eu

$VENV_PYTHON3 $PYTHON_SUMMARY_REPORT $1

echo