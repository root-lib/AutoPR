#!/bin/bash

REPLACE_FILE=~/Documents/dependabot.yml # Dependabot template
FILE=.github/dependabot.yml # File to check
MOD_FILE=go.mod
# add dependabot.yml if the file does not exist and go.mod exists
if [[ ! -f "$FILE" && -f "$MOD_FILE" ]]; then
    echo "go repo without dependabot"
    cp $REPLACE_FILE $FILE
else
    echo "PR failed"
    exit 1
fi



