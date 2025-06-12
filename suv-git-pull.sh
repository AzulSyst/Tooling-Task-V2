#!/bin/bash

source "suv-ansi-colors.sh"
source "suv-options.sh"

set -eu

git checkout $GIT_MAIN_BRANCH
git pull origin $GIT_MAIN_BRANCH