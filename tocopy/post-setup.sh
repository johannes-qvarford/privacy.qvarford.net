#!/bin/bash

for f in tocopy/scripts/apps/*; do
    [[ $f == update-* ]] && continue;
    bash "$f"
done