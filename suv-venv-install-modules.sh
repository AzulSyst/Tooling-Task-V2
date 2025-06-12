#!/bin/bash

source "suv-ansi-colors.sh"
source "suv-options.sh"

set -eu

echo 
echo -e ${ANSI_BG_BLUE}"Updating"${ANSI_OFF} ${ANSI_BG_PURPLE}"pip"${ANSI_OFF} ${ANSI_BG_BLUE}"..."${ANSI_OFF}
$VENV_PYTHON3 -m pip install --upgrade pip

echo 
echo -e ${ANSI_BG_BLUE}"Installing package"${ANSI_OFF} ${ANSI_BG_PURPLE}"python-telegram-bot"${ANSI_OFF} ${ANSI_BG_BLUE}"..."${ANSI_OFF}
$VENV_PIP install -r requirements.txt

echo
echo -e "✅" ${ANSI_BG_BLUE}"Modules have been successfully installed."${ANSI_OFF}

echo 