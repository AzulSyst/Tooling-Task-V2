#!/bin/bash

source "suv-ansi-colors.sh"
source "suv-options.sh"

set -e

set +u

# 
# Check if a comment is provided as an argument
# 
if [ -n "$1" ]; then
    commit_message="$1"
else
    echo
    echo -e ${ANSI_BG_BLUE}"Commit message is set to"${ANSI_OFF} ${ANSI_BG_PURPLE}"-"${ANSI_OFF}
    commit_message="-"
fi

set -u

# 
# Execute Git commands
# 
echo

git add .
git commit -m "$commit_message" || echo "Nothing to commit."
git push origin main

echo 
echo -e ${ANSI_BG_GREEN}"Git upload completed succesfully"${ANSI_OFF}
echo  