> ansible -i inventory.yml all -m ping

> ansible-playbook -i inventory.yml playbook.yml

> apb bootstrap --ask-become-pass

> apb nginx --ask-become-pass

> apb giraffeed --ask-vault-pass

> ansible-vault encrypt_string

> ansible-galaxy collection install community.docker

> ansible-playbook -i inventory.yml setup/certbot.yml --ask-vault-pass

> apb szurubooru -e first_run=true --ask-vault-pass

> apb szurubooru --ask-vault-pass