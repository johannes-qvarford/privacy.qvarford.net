#!/bin/bash

inventory_file="inventory.yml"
app="$1"
if [[ "$2" == "v" ]]; then
    vault=--ask-vault-pass
else
    vault=""
fi

if [[ -d "ansible" ]]; then
    cd ansible
fi

ansible-playbook -i "$inventory_file" $app/playbook.yml $vault