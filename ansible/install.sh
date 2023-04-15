#!/bin/bash

# Prerequisites:
#   inventory.yml contains the ip address / domain of a Ubuntu 22.04 server, which has a root user with an authorized public key that matches the SSH keypair configured for the host.
#   ansible is installed

# Note sure if you have to run this:
ansible-galaxy collection install community.docker

inventory_file="inventory.yml"

ansible-playbook -i "$inventory_file" bootstrap/playbook.yml \
    && ansible-playbook -i "$inventory_file" setup/playbook.yml --ask-vault-pass \
    && ansible-playbook -i "$inventory_file" apps.yml -e first_run=true --ask-vault-pass \
    || exit 1

read -p "Hit Enter once you've created the szuurobooru user."

ansible-playbook -i "$inventory_file" apps.yml --ask-vault-pass