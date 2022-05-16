source tocopy/scripts/utils.sh

function install-nginx() {
    sudo ufw allow 80
    sudo ufw allow 443
    dc nginx down
    sync-app nginx
    dc nginx up -d
}

install-nginx