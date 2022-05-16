function disable-root-login() {
    sudo cp -rp /root/tocopy/* ~/tocopy
    sudo chown -R jq:jq ~/tocopy
    sudo cp -R /root/.ssh ~
    chown -R jq:jq ~/.ssh
    sudo sed -i 's/^[# ]*PermitRootLogin.*/PermitRootLogin no/' /etc/ssh/sshd_config
    sudo service ssh restart
}

disable-root-login