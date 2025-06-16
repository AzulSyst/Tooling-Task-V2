#!/bin/bash

source "suv-ansi-colors.sh"
source "suv-options.sh"

set -eu

if [ "$#" -ne 1 ]; then
    echo "Usage: suv-visualize-report.sh <report_file>"
    exit 1
fi

# Check if the report file exists
if [ ! -f "$1" ]; then
    echo "Error: Report file '$1' does not exist."
    exit 1
fi

# Check if the report file is empty
if [ ! -s "$1" ]; then
    echo "Error: Report file '$1' is empty."
    exit 1
fi

# Check if the report file appears to be a valid CSV file (has at least one comma-separated line)
if ! grep -q ',' "$1"; then
    echo "Error: Report file '$1' does not appear to be a valid CSV file."
    exit 1
fi

$VENV_PYTHON3 $VISUALIZE_REPORT_PY $1

echo 