#!/bin/bash

# Needs to be performed with a ssh shell, because it will prompt for input.
bash tocopy/scripts/certbot.sh

for f in tocopy/scripts/apps/*; do
    [[ $f == update-* ]] && continue;
    bash "$f"
done