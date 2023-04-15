source tocopy/scripts/utils.sh

function func() {
    sudo ufw allow 80
    sudo ufw allow 443
    dc nginx down
    sync-app nginx
    dc nginx up -d
}

func