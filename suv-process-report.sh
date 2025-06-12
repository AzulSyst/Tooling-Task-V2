#!/bin/bash

source "suv-ansi-colors.sh"
source "suv-options.sh"

set -eu

echo 
echo -e ${ANSI_BG_BLUE}"whoami:"${ANSI_OFF}   ${ANSI_BG_PURPLE}$(whoami)${ANSI_OFF}
echo -e ${ANSI_BG_BLUE}"hostname:"${ANSI_OFF} ${ANSI_BG_PURPLE}$(hostname)${ANSI_OFF}
echo -e ${ANSI_BG_BLUE}"pwd:"${ANSI_OFF}      ${ANSI_BG_PURPLE}$(pwd)${ANSI_OFF}

set +e

$VENV_PYTHON3 $PROCESS_REPORT_PY

echo 