#!/bin/bash

if [[ "$USER" != "jq" ]]; then
    echo "Running as root on the first invocation..."
    sudo adduser jq
    sudo usermod -aG sudo jq
    
    cd /home/jq
    sudo su --login jq -- tocopy/setup.sh
    exit 0
fi
echo "Now running as jq..."

bash tocopy/scripts/disable-root-login.sh
bash tocopy/scripts/docker.sh
bash tocopy/scripts/certbot.sh
bash tocopy/scripts/apps/nginx.sh
bash tocopy/scripts/apps/invidious.sh
bash tocopy/scripts/apps/nitter.sh
bash tocopy/scripts/apps/feedragon.sh
bash tocopy/scripts/apps/libreddit.sh