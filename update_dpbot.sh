#!/bin/bash

REPLACE_FILE=~/Documents/dependabot.yml # The file that should replace the file in the repo, must be an absolute path
FILE=.github/dependabot.yml # Relative from any repos root
MOD_FILE=go.mod
# Don't replace this file if it does not already exist in the repo
if [[ ! -f "$FILE" && -f "$MOD_FILE" ]]; then
    echo "go repo without dependabot"
    cp $REPLACE_FILE $FILE
else
    echo "PR failed"
    exit 1
fi



